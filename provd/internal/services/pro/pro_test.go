package pro_test

import (
	"context"
	"encoding/json"
	"errors"
	"flag"
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
	"google.golang.org/protobuf/types/known/wrapperspb"
)

func TestProMagicAttach(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {

		// Special cases
		userCodeRefresh bool

		// Failure flags
		failInitiate    bool
		failWait        bool
		failAttach      bool
		alreadyAttached bool

		// Network error flags
		networkErrorInitiate bool
		networkErrorWait     bool

		// Already attached flag
		alreadyAttached bool
	}{
		// Success cases
		"Successfully attach machine to pro subscription":             {},
		"Successfully attach machine after, single user code refresh": {userCodeRefresh: true},

		// Error cases
		"Error when fail to call initiate": {failInitiate: true},
		"Error when fail to call wait":     {failWait: true},

		// Special return cases
		"UnknownError code returned when fail to call attach":                  {failAttach: true},
		"NetworkError code returned when network fails while waiting:":         {networkErrorWait: true},
		"NetworkError code returned when network fails when calling initiate:": {networkErrorInitiate: true},
		"AlreadyAttachedError code returned when already attached":             {alreadyAttached: true},
	}

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []pro.Option{
				pro.WithProExecutable(&mockProExecutable{failInitiate: tc.failInitiate, failWait: tc.failWait, failAttach: tc.failAttach, userCodeRefresh: tc.userCodeRefresh, networkErrorWait: tc.networkErrorWait, networkErrorInitiate: tc.networkErrorInitiate, alreadyAttached: tc.alreadyAttached}),
			}

			// Setup test
			client := newProClient(t, opts...)
			stream, err := client.ProMagicAttach(context.Background(), &emptypb.Empty{})
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
			gotBytes, err := json.Marshal(responses)
			require.NoError(t, err, "marshaling responses to JSON should not fail")

			got := string(gotBytes)
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "response from ProMagicAttach should match expected")
		})
	}
}

func TestProStatus(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		// Failure flags
		failStatus bool

		alreadyAttached bool
	}{
		"False returned when the system is not attached":   {},
		"True returned when the system is aleady attached": {alreadyAttached: true},

		"Error when fails to get a response from status call": {failStatus: true},
	}

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []pro.Option{
				pro.WithProExecutable(&mockProExecutable{failStatus: tc.failStatus, alreadyAttached: tc.alreadyAttached}),
			}

			// Setup test
			client := newProClient(t, opts...)
			resp, err := client.ProStatus(context.Background(), &emptypb.Empty{})

			// Error cases
			if tc.failStatus {
				require.Error(t, err, "ProStatus should return an error")
				return
			}
			require.NoError(t, err, "ProStatus should not return an error")

			// Success cases
			require.Equal(t, tc.alreadyAttached, resp.Value, "ProStatus returned an unexpected response")
		})
	}
}

func TestProAttach(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		// Failure flags
		failAttach bool
	}{
		// Success cases
		"Successfully attach machine to pro subscription": {},

		// Error cases
		"Error code returned when fail to call attach": {failAttach: true},
	}

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []pro.Option{
				pro.WithProExecutable(&mockProExecutable{failAttach: tc.failAttach}),
			}
			client := newProClient(t, opts...)
			_, err := client.ProAttach(context.Background(), &wrapperspb.StringValue{Value: "mock_token"})

			if tc.failAttach {
				require.Error(t, err, "ProAttach should return an error")
				return
			}
			require.NoError(t, err, "ProAttach should not return an error")
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

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()

	m.Run()
}

type mockProExecutable struct {
	userCodeRefresh bool

	failInitiate bool
	failWait     bool
	failAttach   bool
	failStatus   bool

	alreadyAttached bool

	networkErrorWait     bool
	networkErrorInitiate bool

	alreadyAttached bool
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
	if m.alreadyAttached {
		return errors.New("already attached")
	}
	return nil
}

func (m *mockProExecutable) Status(ctx context.Context) (*bool, error) {
	if m.failStatus {
		return nil, errors.New("failed status")
	}
	return &m.alreadyAttached, nil
}
