package pro_test

import (
	"context"
	"encoding/json"
	"errors"
	"io"
	"net"
	"os"
	"path/filepath"
	"testing"

	pro "github.com/canonical/ubuntu-desktop-provision/provd/internal/services/pro"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/emptypb"
)

func TestProMagicAttach(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {

		// Special cases
		userCodeRefresh bool

		// Failure flags
		failInitiate bool
		failWait     bool
		failAttach   bool

		// Network error flags
		networkErrorInitiate bool
		networkErrorWait     bool
	}{
		// Success cases
		"Successfully attach machine to pro subscription":             {},
		"Successfully attach machine after, single user code refresh": {userCodeRefresh: true},

		// Error cases
		"Error when fail to call initiate":                {failInitiate: true},
		"Error when fail to call wait":                    {failWait: true},
		"Error when fail to call attach":                  {failAttach: true},
		"Error when network fails while waiting:":         {networkErrorWait: true},
		"Error when network fails when calling initiate:": {networkErrorInitiate: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			opts := []pro.Option{
				pro.WithProExecutable(&mockProExecutable{failInitiate: tc.failInitiate, failWait: tc.failWait, failAttach: tc.failAttach, userCodeRefresh: tc.userCodeRefresh, networkErrorWait: tc.networkErrorWait, networkErrorInitiate: tc.networkErrorInitiate}),
			}

			client := newProClient(t, opts...)

			stream, err := client.ProMagicAttach(context.Background(), &emptypb.Empty{})

			// Errors will only be returned here if initial stream setup or network errors occur
			require.NoError(t, err, "calling ProMagicAttach should not fail")

			// Collect all responses from the stream
			var responses []string
			for {
				resp, err := stream.Recv()

				if err != nil {
					if !errors.Is(err, io.EOF) {
						responses = append(responses, err.Error())
					}
					break
				}

				respBytes, err := json.Marshal(resp)
				require.NoError(t, err, "marshaling response to JSON should not fail")
				responses = append(responses, string(respBytes))
			}

			// Marshal the collected responses to JSON
			gotBytes, err := json.Marshal(responses)
			require.NoError(t, err, "marshaling responses to JSON should not fail")
			got := string(gotBytes)

			want := testutils.LoadWithUpdateFromGolden(t, got)

			require.Equal(t, want, got, "response from ProMagicAttach should match expected")
		})
	}
}

// newProClient creates a new keyboard client for testing, with a temp unix socket.
func newProClient(t *testing.T, opts ...pro.Option) pb.ProServiceClient {
	t.Helper()

	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	service, err := pro.New(opts...)

	if err != nil {
		t.Fatalf("Setup: could not create user service: %v", err)
	}

	grpcServer := grpc.NewServer()
	pb.RegisterProServiceServer(grpcServer, service)
	done := make(chan struct{})
	go func() {
		defer close(done)
		_ = grpcServer.Serve(lis)
	}()
	t.Cleanup(func() {
		grpcServer.Stop()
		<-done
	})

	conn, err := grpc.Dial("unix://"+socketPath, grpc.WithTransportCredentials(insecure.NewCredentials()))
	require.NoError(t, err, "Setup: Could not connect to GRPC server")
	t.Cleanup(func() { _ = conn.Close() })

	return pb.NewProServiceClient(conn)
}

type mockProExecutable struct {
	userCodeRefresh bool

	failInitiate bool
	failWait     bool
	failAttach   bool

	networkErrorWait     bool
	networkErrorInitiate bool
}

func (m *mockProExecutable) Initiate(ctx context.Context) (*pro.ProAPIResponse, error) {
	if m.failInitiate {
		return nil, errors.New("mock initiate failed")
	}
	if m.networkErrorInitiate {
		return &pro.ProAPIResponse{
			Result: "failure",
			Errors: pro.ProAPIErrors{
				{
					Code: "connectivity-error",
				},
			},
		}, nil
	}
	return &pro.ProAPIResponse{
		Result: "success",
		Data: struct {
			Attributes struct {
				Expires       string  `json:"expires,omitempty"`
				ExpiresIn     int     `json:"expires_in,omitempty"`
				Token         string  `json:"token,omitempty"`
				UserCode      string  `json:"user_code,omitempty"`
				ContractID    *string `json:"contract_id,omitempty"`
				ContractToken *string `json:"contract_token,omitempty"`
			} `json:"attributes"`
		}{
			Attributes: struct {
				Expires       string  `json:"expires,omitempty"`
				ExpiresIn     int     `json:"expires_in,omitempty"`
				Token         string  `json:"token,omitempty"`
				UserCode      string  `json:"user_code,omitempty"`
				ContractID    *string `json:"contract_id,omitempty"`
				ContractToken *string `json:"contract_token,omitempty"`
			}{
				Token:    "mock_token",
				UserCode: "mock_user_code",
			},
		},
	}, nil
}

func (m *mockProExecutable) Wait(ctx context.Context, token string) (*pro.ProAPIResponse, error) {
	if m.failWait {
		return nil, errors.New("wait failed")
	}
	if m.userCodeRefresh {
		m.userCodeRefresh = false
		return &pro.ProAPIResponse{
			Result: "failure",
			Errors: pro.ProAPIErrors{
				{
					Code: "magic-attach-token-error",
				},
			},
		}, nil
	}
	if m.networkErrorWait {
		return &pro.ProAPIResponse{
			Result: "failure",
			Errors: pro.ProAPIErrors{
				{
					Code: "connectivity-error",
				},
			},
		}, nil
	}
	return &pro.ProAPIResponse{
		Result: "success",
		Data: struct {
			Attributes struct {
				Expires       string  `json:"expires,omitempty"`
				ExpiresIn     int     `json:"expires_in,omitempty"`
				Token         string  `json:"token,omitempty"`
				UserCode      string  `json:"user_code,omitempty"`
				ContractID    *string `json:"contract_id,omitempty"`
				ContractToken *string `json:"contract_token,omitempty"`
			} `json:"attributes"`
		}{
			Attributes: struct {
				Expires       string  `json:"expires,omitempty"`
				ExpiresIn     int     `json:"expires_in,omitempty"`
				Token         string  `json:"token,omitempty"`
				UserCode      string  `json:"user_code,omitempty"`
				ContractID    *string `json:"contract_id,omitempty"`
				ContractToken *string `json:"contract_token,omitempty"`
			}{
				ContractToken: new(string),
			},
		},
	}, nil
}

func (m *mockProExecutable) Attach(ctx context.Context, token string) error {
	if m.failAttach {
		return errors.New("attach failed")
	}
	return nil
}
