// Package pro implements the Pro gRPC service.
package pro

import (
	"context"
	"encoding/json"
	"fmt"
	"log/slog"
	"os/exec"

	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

type iProExecutable interface {
	Initiate(ctx context.Context) (*proAPIResponse, error)
	Wait(ctx context.Context, token string) (*proAPIResponse, error)
	Attach(ctx context.Context, token string) error
	Status(ctx context.Context) (*bool, error)
}

type proExecutable struct{}

// Option is a functional option to set the DBus objects in tests.
type Option func(*Service) error

// Service is the implementation of the Pro service.
type Service struct {
	pb.UnimplementedProServiceServer
	proExecutable iProExecutable
}

// New returns a new instance of the Pro service.
func New(opts ...Option) (*Service, error) {
	s := &Service{}

	p := &proExecutable{}
	s.proExecutable = p

	// Applying options, checking for errors in obtaining DBus objects
	for _, opt := range opts {
		if err := opt(s); err != nil {
			return nil, err
		}
	}

	return s, nil
}

type proAPIResponse struct {
	Result string `json:"result"`
	Data   struct {
		Attributes struct {
			Expires       string  `json:"expires,omitempty"`
			ExpiresIn     int     `json:"expires_in,omitempty"`
			Token         string  `json:"token,omitempty"`
			UserCode      string  `json:"user_code,omitempty"`
			ContractID    *string `json:"contract_id,omitempty"`
			ContractToken *string `json:"contract_token,omitempty"`
		} `json:"attributes"`
	} `json:"data"`
	Errors   proAPIErrors  `json:"errors"`
	Version  string        `json:"version"`
	Warnings []interface{} `json:"warnings"`
}

type proAPIError struct {
	Code string `json:"code"`
}

type proAPIErrors []proAPIError

func (e proAPIErrors) ContainsCode(code string) bool {
	for _, err := range e {
		if err.Code == code {
			return true
		}
	}
	return false
}

// ProMagicAttach streams a user code and waits on a contract token from the pro server to preform a magic attach.
func (s *Service) ProMagicAttach(req *emptypb.Empty, stream pb.ProService_ProMagicAttachServer) error {
	// Initiate magic attach process
	response, err := s.proExecutable.Initiate(stream.Context())
	if err != nil {
		return status.Errorf(codes.Internal, fmt.Sprintf("failed to initiate magic attach: %v", err))
	}
	if response.Result != "success" {
		if response.Errors.ContainsCode("connectivity-error") {
			return s.sendSteamResponse(stream, pb.ProMagicAttachResponseType_NETWORK_ERROR, nil)
		}
		return s.sendSteamResponse(stream, pb.ProMagicAttachResponseType_UNKNOWN_ERROR, nil)
	}

	// Send the user code
	err = s.sendSteamResponse(stream, pb.ProMagicAttachResponseType_USER_CODE, &response.Data.Attributes.UserCode)
	if err != nil {
		return err
	}

	// Wait for user to enter User Code on ubuntu.com/pro/attach
	var contractToken *string
	magicToken := &response.Data.Attributes.Token
	for {
		// Wait for magic attach process to complete
		response, err := s.proExecutable.Wait(stream.Context(), *magicToken)
		if err != nil {
			return status.Errorf(codes.Internal, fmt.Sprintf("failed to wait on magic attach: %v", err))
		}

		// Successfully got the Contract Token
		if response.Result == "success" {
			contractToken = response.Data.Attributes.ContractToken
			break
		}

		// Failed to get Contract Token
		if response.Errors.ContainsCode("magic-attach-token-error") {
			// Code exparation reached, generate a new user code
			response, err := s.proExecutable.Initiate(stream.Context())
			if err != nil {
				return status.Errorf(codes.Internal, fmt.Sprintf("failed to initiate magic attach: %v", err))
			}
			if response.Result != "success" {
				if response.Errors.ContainsCode("connectivity-error") {
					return s.sendSteamResponse(stream, pb.ProMagicAttachResponseType_NETWORK_ERROR, nil)
				}
				return s.sendSteamResponse(stream, pb.ProMagicAttachResponseType_UNKNOWN_ERROR, nil)
			}
			// Send the newly generated user code
			err = s.sendSteamResponse(stream, *pb.ProMagicAttachResponseType_REFRESHED_USER_CODE.Enum(), &response.Data.Attributes.UserCode)
			if err != nil {
				return err
			}
			magicToken = &response.Data.Attributes.Token
			continue
		}

		// Handle other error cases
		if response.Errors.ContainsCode("connectivity-error") {
			return s.sendSteamResponse(stream, pb.ProMagicAttachResponseType_NETWORK_ERROR, nil)
		}
		return s.sendSteamResponse(stream, pb.ProMagicAttachResponseType_UNKNOWN_ERROR, nil)
	}

	// Pro attach the returned Contract Token
	if contractToken == nil {
		return status.Errorf(codes.Internal, "contract token not found in response")
	}
	if err := s.proExecutable.Attach(stream.Context(), *contractToken); err != nil {
		if strings.Contains(err.Error(), "failed to run pro attach") {
			return s.sendSteamResponse(stream, pb.ProMagicAttachResponseType_ALREADY_ATTACHED, nil)
		}
		return s.sendSteamResponse(stream, pb.ProMagicAttachResponseType_UNKNOWN_ERROR, nil)
	}

	// Send the final success response
	return s.sendSteamResponse(stream, pb.ProMagicAttachResponseType_SUCCESS, nil)
}

func (p *proExecutable) Initiate(ctx context.Context) (*proAPIResponse, error) {
	out, err := exec.CommandContext(ctx, "pro", "api", "u.pro.attach.magic.initiate.v1").Output()

	if out == nil && err != nil {
		slog.Error(fmt.Sprintf("failed to initiate magic attach: %v\nOutput: %s", err, string(out)))
		return nil, fmt.Errorf("failed to initiate magic attach: %v\nOutput: %s", err, string(out))
	}

	// Parse the response
	var response proAPIResponse
	if err := json.Unmarshal(out, &response); err != nil {
		slog.Error(fmt.Sprintf("failed to parse response: %v", err))
		return nil, fmt.Errorf("failed to parse response: %v", err)
	}

	return &response, nil
}

func (p *proExecutable) Status(ctx context.Context) (*bool, error) {
	// Execute the pro status command
	out, err := exec.CommandContext(ctx, "pro", "status", "--format=json").Output()
	if err != nil {
		slog.Error(fmt.Sprintf("failed to execute pro status: %v\nOutput: %s", err, string(out)))
		return nil, fmt.Errorf("failed to execute pro status: %v\nOutput: %s", err, string(out))
	}

	var attachedStatus struct {
		Attached bool
	}
	if err = json.Unmarshal(out, &attachedStatus); err != nil {
		return nil, fmt.Errorf("could not parse output: %v. Output: %s", err, string(out))
	}

	return &attachedStatus.Attached, nil
}

func (p *proExecutable) Wait(ctx context.Context, token string) (*proAPIResponse, error) {
	// Initiate magic attach process
	// #nosec:G204 // We are in control of the token formatting and this is only the argument.
	out, err := exec.CommandContext(ctx, "pro", "api", "u.pro.attach.magic.wait.v1", "--args", fmt.Sprintf("magic_token=%s", token)).Output()

	if out == nil && err != nil {
		slog.Error(fmt.Sprintf("failed to wait on attach response: %v\nOutput: %s", err, string(out)))
		return nil, fmt.Errorf("failed to wait on attach response: %v\nOutput: %s", err, string(out))
	}

	// Parse the response
	var response proAPIResponse
	if err := json.Unmarshal(out, &response); err != nil {
		slog.Error(fmt.Sprintf("failed to parse response: %v", err))
		return nil, fmt.Errorf("failed to parse response: %v", err)
	}

	return &response, nil
}

var tokenPattern = regexp.MustCompile(`^[A-Za-z0-9]{29,32}$`)
		
func (p *proExecutable) Attach(ctx context.Context, token string) error {
	// Construct the full path to the pro-attach executable
	proAttachPath := "/usr/libexec/sprovd"

	// Run the pro attach command with the contract token
	out, err := exec.CommandContext(ctx, proAttachPath, token).CombinedOutput()
	if err != nil {
		slog.Error(fmt.Sprintf("failed to run pro attach: %v\nOutput: %s", err, string(out)))
		return fmt.Errorf("failed to run pro attach: %v\nOutput: %s", err, string(out))
	}

	return nil
}

// Helper function to send an initiate response and handle errors.
func (s *Service) sendSteamResponse(stream pb.ProService_ProMagicAttachServer, respType pb.ProMagicAttachResponseType, userCode *string) error {
	resp := &pb.ProMagicAttachResponse{
		Type: respType,
	}
	if userCode != nil {
		resp.UserCode = userCode
	}
	if err := stream.Send(resp); err != nil {
		return status.Errorf(codes.Internal, "failed to send response: %v", err)
	}
	return nil
}

// ProAttach attaches a contract token to the system.
func (s *Service) ProAttach(ctx context.Context, req *wrapperspb.StringValue) (*emptypb.Empty, error) {
	if err := s.proExecutable.Attach(ctx, req.Value); err != nil {
		return nil, status.Errorf(codes.Internal, fmt.Sprintf("failed to pro attach: %v", err))
	}
	return &emptypb.Empty{}, nil
}

// ProStatus returns if the machine is currently pro attached.
func (s *Service) ProStatus(ctx context.Context, _ *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	attached, err := s.proExecutable.Status(ctx)

	if err != nil {
		return nil, status.Errorf(codes.Internal, fmt.Sprintf("failed to pro attach: %v", err))
	}
	return &wrapperspb.BoolValue{Value: *attached}, nil
}
