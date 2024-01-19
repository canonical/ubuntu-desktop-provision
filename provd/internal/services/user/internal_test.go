package user

// import (
// 	"testing"

// 	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
// 	"github.com/stretchr/testify/require"
// )

// func TestHashPassword(t *testing.T) {
// 	t.Parallel()

// 	tests := map[string]struct {
// 		password string
// 		wantErr  bool
// 	}{
// 		"Valid password": {
// 			password: "securepassword123",
// 			wantErr:  false,
// 		},
// 		"Empty password": {
// 			password: "",
// 			wantErr:  true,
// 		},
// 	}

// 	for name, tc := range tests {
// 		tc := tc
// 		t.Run(name, func(t *testing.T) {
// 			t.Parallel()
// 			salt := "pepper"
// 			got, err := hashPassword(tc.password)

// 			if tc.wantErr {
// 				require.Error(t, err)
// 				return
// 			}

// 			require.NoError(t, err, "HashPassword should not return an error, but did")

// 			want := testutils.LoadWithUpdateFromGolden(t, got)
// 			require.Equal(t, want, got, "HashPassword returned an unexpected response")
// 		})
// 	}
// }
