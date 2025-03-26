// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.5.1
// - protoc             v4.23.4
// source: protos/locale.proto

package proto

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	emptypb "google.golang.org/protobuf/types/known/emptypb"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.64.0 or later.
const _ = grpc.SupportPackageIsVersion9

const (
	LocaleService_SetLocale_FullMethodName = "/locale.LocaleService/SetLocale"
	LocaleService_GetLocale_FullMethodName = "/locale.LocaleService/GetLocale"
)

// LocaleServiceClient is the client API for LocaleService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type LocaleServiceClient interface {
	SetLocale(ctx context.Context, in *SetLocaleRequest, opts ...grpc.CallOption) (*emptypb.Empty, error)
	GetLocale(ctx context.Context, in *emptypb.Empty, opts ...grpc.CallOption) (*GetLocaleResponse, error)
}

type localeServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewLocaleServiceClient(cc grpc.ClientConnInterface) LocaleServiceClient {
	return &localeServiceClient{cc}
}

func (c *localeServiceClient) SetLocale(ctx context.Context, in *SetLocaleRequest, opts ...grpc.CallOption) (*emptypb.Empty, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(emptypb.Empty)
	err := c.cc.Invoke(ctx, LocaleService_SetLocale_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *localeServiceClient) GetLocale(ctx context.Context, in *emptypb.Empty, opts ...grpc.CallOption) (*GetLocaleResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetLocaleResponse)
	err := c.cc.Invoke(ctx, LocaleService_GetLocale_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// LocaleServiceServer is the server API for LocaleService service.
// All implementations must embed UnimplementedLocaleServiceServer
// for forward compatibility.
type LocaleServiceServer interface {
	SetLocale(context.Context, *SetLocaleRequest) (*emptypb.Empty, error)
	GetLocale(context.Context, *emptypb.Empty) (*GetLocaleResponse, error)
	mustEmbedUnimplementedLocaleServiceServer()
}

// UnimplementedLocaleServiceServer must be embedded to have
// forward compatible implementations.
//
// NOTE: this should be embedded by value instead of pointer to avoid a nil
// pointer dereference when methods are called.
type UnimplementedLocaleServiceServer struct{}

func (UnimplementedLocaleServiceServer) SetLocale(context.Context, *SetLocaleRequest) (*emptypb.Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetLocale not implemented")
}
func (UnimplementedLocaleServiceServer) GetLocale(context.Context, *emptypb.Empty) (*GetLocaleResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetLocale not implemented")
}
func (UnimplementedLocaleServiceServer) mustEmbedUnimplementedLocaleServiceServer() {}
func (UnimplementedLocaleServiceServer) testEmbeddedByValue()                       {}

// UnsafeLocaleServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to LocaleServiceServer will
// result in compilation errors.
type UnsafeLocaleServiceServer interface {
	mustEmbedUnimplementedLocaleServiceServer()
}

func RegisterLocaleServiceServer(s grpc.ServiceRegistrar, srv LocaleServiceServer) {
	// If the following call pancis, it indicates UnimplementedLocaleServiceServer was
	// embedded by pointer and is nil.  This will cause panics if an
	// unimplemented method is ever invoked, so we test this at initialization
	// time to prevent it from happening at runtime later due to I/O.
	if t, ok := srv.(interface{ testEmbeddedByValue() }); ok {
		t.testEmbeddedByValue()
	}
	s.RegisterService(&LocaleService_ServiceDesc, srv)
}

func _LocaleService_SetLocale_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(SetLocaleRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(LocaleServiceServer).SetLocale(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: LocaleService_SetLocale_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(LocaleServiceServer).SetLocale(ctx, req.(*SetLocaleRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _LocaleService_GetLocale_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(emptypb.Empty)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(LocaleServiceServer).GetLocale(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: LocaleService_GetLocale_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(LocaleServiceServer).GetLocale(ctx, req.(*emptypb.Empty))
	}
	return interceptor(ctx, in, info, handler)
}

// LocaleService_ServiceDesc is the grpc.ServiceDesc for LocaleService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var LocaleService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "locale.LocaleService",
	HandlerType: (*LocaleServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "SetLocale",
			Handler:    _LocaleService_SetLocale_Handler,
		},
		{
			MethodName: "GetLocale",
			Handler:    _LocaleService_GetLocale_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "protos/locale.proto",
}
