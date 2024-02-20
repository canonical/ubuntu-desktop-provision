package pro

import (
	"context"
	"encoding/json"
	"fmt"
	"os/exec"
	"strings"

	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

// Option is a functional option to set the DBus objects in tests.
type Option func(*Service) error

// Service is the implementation of the Pro service.
type Service struct {
	pb.UnimplementedProServiceServer
}

// New returns a new instance of the Pro service.
func New(opts ...Option) (*Service, error) {
	s := &Service{}

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
	Errors   []interface{} `json:"errors"`
	Version  string        `json:"version"`
	Warnings []interface{} `json:"warnings"`
}

func (s *Service) ProMagicAttach(req *emptypb.Empty, stream pb.ProService_ProMagicAttachServer) error {
	// Validate request
	if req == nil {
		return status.Errorf(codes.InvalidArgument, "request is nil")
	}

	// Initiate magic attach process
	exe, args := "pro", []string{"api", "u.pro.attach.magic.initiate.v1"}
	out, exeErr := exec.CommandContext(stream.Context(), exe, args...).Output()

	// Parse the response
	var response proAPIResponse
	if err := json.Unmarshal(out, &response); err != nil {
		return status.Errorf(codes.Internal, fmt.Sprintf("failed to parse response: %v", err))
	}

	if exeErr != nil {
		// Check if it was a connectivity error
		for _, e := range response.Errors {
			if err, ok := e.(map[string]interface{}); ok {
				if code, ok := err["code"].(string); ok && strings.Contains(code, "connectivity-error") {
					resp := &pb.ProMagicAttachResponse{
						Type: *pb.MagicAttachResponseType_NETWORK_ERROR.Enum(),
					}
					if err := stream.Send(resp); err != nil {
						return status.Errorf(codes.Internal, fmt.Sprintf("failed to send connectivity error response: %v", err))
					}
					return nil
				}
			}
		}

		// If not a connectivity error, return unknown error
		resp := &pb.ProMagicAttachResponse{
			Type: *pb.MagicAttachResponseType_UNKOWN_ERROR.Enum(),
		}
		if err := stream.Send(resp); err != nil {
			return status.Errorf(codes.Internal, fmt.Sprintf("failed to send unknown error response: %v", err))
		}
		return nil
	}

	// Return the user code
	userCodeResponse := &pb.ProMagicAttachResponse{
		Type:     pb.MagicAttachResponseType_USER_CODE,
		UserCode: &response.Data.Attributes.UserCode,
	}
	if err := stream.Send(userCodeResponse); err != nil {
		return status.Errorf(codes.Internal, fmt.Sprintf("failed to send user code response: %v", err))
	}

	// Wait for magic attach process to complete
	exe, args = "pro", []string{"api", "u.pro.attach.magic.wait.v1", "--args", fmt.Sprintf("magic_token=%s", response.Data.Attributes.Token)}
	out, err := exec.CommandContext(stream.Context(), exe, args...).Output()
	if err != nil {
		return status.Errorf(codes.Internal, fmt.Sprintf("failed to wait for magic attach: %v", err))
	}

	if err := json.Unmarshal(out, &response); err != nil {
		return status.Errorf(codes.Internal, fmt.Sprintf("failed to parse wait response: %v", err))
	}

	if response.Result != "success" {
		return status.Errorf(codes.Internal, "magic attach process was not successful")
	}

	// Get the contract token
	contractToken := response.Data.Attributes.ContractToken
	if contractToken == nil {
		return status.Errorf(codes.Internal, "contract token not found in response")
	}

	// Pro attach the token
	if err := runProAttach(stream.Context(), *contractToken); err != nil {
		return status.Errorf(codes.Internal, fmt.Sprintf("failed to pro attach: %v", err))
	}

	// Send the final success response
	successResponse := &pb.ProMagicAttachResponse{
		Type: pb.MagicAttachResponseType_SUCCESS,
	}
	if err := stream.Send(successResponse); err != nil {
		return status.Errorf(codes.Internal, fmt.Sprintf("failed to send final success response: %v", err))
	}

	// Close the stream
	return nil

}

func (s *Service) ProAttach(ctx context.Context, req *wrapperspb.StringValue) (*emptypb.Empty, error) {
	// Validate request
	if req == nil || req.Value == "" {
		return nil, status.Errorf(codes.InvalidArgument, "contract token is required")
	}

	// Pro attach the token
	if err := runProAttach(ctx, req.Value); err != nil {
		return nil, status.Errorf(codes.Internal, fmt.Sprintf("failed to pro attach: %v", err))
	}

	// Return an empty response on success
	return &emptypb.Empty{}, nil
}

func runProAttach(ctx context.Context, contractToken string) error {
	// Construct the full path to the pro-attach executable
	proAttachPath := "/home/matt/dev/go/pro-attach/pro-attach"

	// Run the pro attach command with the contract token
	out, err := exec.CommandContext(ctx, proAttachPath, contractToken).Output()
	if err != nil {
		return fmt.Errorf("failed to run pro attach: %v\nOutput: %s", err, string(out))
	}

	// Process the output if needed
	// For example, you might want to check for success or parse the output

	return nil
}
