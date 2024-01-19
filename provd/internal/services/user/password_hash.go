// Package user implements the User gRPC service.
package user

/*
#cgo CFLAGS: -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include
#cgo LDFLAGS: -lcrypt -lglib-2.0
#include "password_hash.h"
*/
import "C"
import (
	"errors"
	"unsafe"
)

// hashPassword hashes a password using the C function make_crypted with an optional salt
func hashPassword(password string, salt *string) (string, error) {
	if password == "" {
		return "", errors.New("password cannot be empty")
	}

	cPassword := C.CString(password)

	defer C.free(unsafe.Pointer(cPassword))
	// If salt is nil, cSalt will be NULL when passed to the C function
	var cSalt *C.char
	if salt != nil {
		cSalt = C.CString(*salt)
		defer C.free(unsafe.Pointer(cSalt))
	}

	cHash := C.make_crypted(cPassword, cSalt)
	defer C.free(unsafe.Pointer(cHash))
	if cHash == nil {
		return "", errors.New("error hashing password")
	}

	return C.GoString(cHash), nil
}
