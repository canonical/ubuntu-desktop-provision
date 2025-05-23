// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.5.1
// - protoc             v4.23.4
// source: protos/ad.proto

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
	ActiveDirectoryService_HasSupport_FullMethodName           = "/active_directory.ActiveDirectoryService/HasSupport"
	ActiveDirectoryService_IsUsed_FullMethodName               = "/active_directory.ActiveDirectoryService/IsUsed"
	ActiveDirectoryService_SetUsed_FullMethodName              = "/active_directory.ActiveDirectoryService/SetUsed"
	ActiveDirectoryService_GetConnectionInfo_FullMethodName    = "/active_directory.ActiveDirectoryService/GetConnectionInfo"
	ActiveDirectoryService_SetConnectionInfo_FullMethodName    = "/active_directory.ActiveDirectoryService/SetConnectionInfo"
	ActiveDirectoryService_CheckDomainName_FullMethodName      = "/active_directory.ActiveDirectoryService/CheckDomainName"
	ActiveDirectoryService_CheckAdminName_FullMethodName       = "/active_directory.ActiveDirectoryService/CheckAdminName"
	ActiveDirectoryService_CheckPassword_FullMethodName        = "/active_directory.ActiveDirectoryService/CheckPassword"
	ActiveDirectoryService_PingDomainController_FullMethodName = "/active_directory.ActiveDirectoryService/PingDomainController"
	ActiveDirectoryService_GetJoinResult_FullMethodName        = "/active_directory.ActiveDirectoryService/GetJoinResult"
)

// ActiveDirectoryServiceClient is the client API for ActiveDirectoryService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type ActiveDirectoryServiceClient interface {
	HasSupport(ctx context.Context, in *emptypb.Empty, opts ...grpc.CallOption) (*HasSupportResponse, error)
	IsUsed(ctx context.Context, in *emptypb.Empty, opts ...grpc.CallOption) (*IsUsedResponse, error)
	SetUsed(ctx context.Context, in *SetUsedRequest, opts ...grpc.CallOption) (*emptypb.Empty, error)
	GetConnectionInfo(ctx context.Context, in *emptypb.Empty, opts ...grpc.CallOption) (*GetConnectionInfoResponse, error)
	SetConnectionInfo(ctx context.Context, in *SetConnectionInfoRequest, opts ...grpc.CallOption) (*emptypb.Empty, error)
	CheckDomainName(ctx context.Context, in *CheckDomainNameRequest, opts ...grpc.CallOption) (*CheckDomainNameResponse, error)
	CheckAdminName(ctx context.Context, in *CheckAdminNameRequest, opts ...grpc.CallOption) (*CheckAdminNameResponse, error)
	CheckPassword(ctx context.Context, in *CheckPasswordRequest, opts ...grpc.CallOption) (*CheckPasswordResponse, error)
	PingDomainController(ctx context.Context, in *PingDomainControllerRequest, opts ...grpc.CallOption) (*PingDomainControllerResponse, error)
	GetJoinResult(ctx context.Context, in *GetJoinResultRequest, opts ...grpc.CallOption) (*GetJoinResultResponse, error)
}

type activeDirectoryServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewActiveDirectoryServiceClient(cc grpc.ClientConnInterface) ActiveDirectoryServiceClient {
	return &activeDirectoryServiceClient{cc}
}

func (c *activeDirectoryServiceClient) HasSupport(ctx context.Context, in *emptypb.Empty, opts ...grpc.CallOption) (*HasSupportResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(HasSupportResponse)
	err := c.cc.Invoke(ctx, ActiveDirectoryService_HasSupport_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *activeDirectoryServiceClient) IsUsed(ctx context.Context, in *emptypb.Empty, opts ...grpc.CallOption) (*IsUsedResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(IsUsedResponse)
	err := c.cc.Invoke(ctx, ActiveDirectoryService_IsUsed_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *activeDirectoryServiceClient) SetUsed(ctx context.Context, in *SetUsedRequest, opts ...grpc.CallOption) (*emptypb.Empty, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(emptypb.Empty)
	err := c.cc.Invoke(ctx, ActiveDirectoryService_SetUsed_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *activeDirectoryServiceClient) GetConnectionInfo(ctx context.Context, in *emptypb.Empty, opts ...grpc.CallOption) (*GetConnectionInfoResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetConnectionInfoResponse)
	err := c.cc.Invoke(ctx, ActiveDirectoryService_GetConnectionInfo_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *activeDirectoryServiceClient) SetConnectionInfo(ctx context.Context, in *SetConnectionInfoRequest, opts ...grpc.CallOption) (*emptypb.Empty, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(emptypb.Empty)
	err := c.cc.Invoke(ctx, ActiveDirectoryService_SetConnectionInfo_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *activeDirectoryServiceClient) CheckDomainName(ctx context.Context, in *CheckDomainNameRequest, opts ...grpc.CallOption) (*CheckDomainNameResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(CheckDomainNameResponse)
	err := c.cc.Invoke(ctx, ActiveDirectoryService_CheckDomainName_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *activeDirectoryServiceClient) CheckAdminName(ctx context.Context, in *CheckAdminNameRequest, opts ...grpc.CallOption) (*CheckAdminNameResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(CheckAdminNameResponse)
	err := c.cc.Invoke(ctx, ActiveDirectoryService_CheckAdminName_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *activeDirectoryServiceClient) CheckPassword(ctx context.Context, in *CheckPasswordRequest, opts ...grpc.CallOption) (*CheckPasswordResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(CheckPasswordResponse)
	err := c.cc.Invoke(ctx, ActiveDirectoryService_CheckPassword_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *activeDirectoryServiceClient) PingDomainController(ctx context.Context, in *PingDomainControllerRequest, opts ...grpc.CallOption) (*PingDomainControllerResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(PingDomainControllerResponse)
	err := c.cc.Invoke(ctx, ActiveDirectoryService_PingDomainController_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *activeDirectoryServiceClient) GetJoinResult(ctx context.Context, in *GetJoinResultRequest, opts ...grpc.CallOption) (*GetJoinResultResponse, error) {
	cOpts := append([]grpc.CallOption{grpc.StaticMethod()}, opts...)
	out := new(GetJoinResultResponse)
	err := c.cc.Invoke(ctx, ActiveDirectoryService_GetJoinResult_FullMethodName, in, out, cOpts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// ActiveDirectoryServiceServer is the server API for ActiveDirectoryService service.
// All implementations must embed UnimplementedActiveDirectoryServiceServer
// for forward compatibility.
type ActiveDirectoryServiceServer interface {
	HasSupport(context.Context, *emptypb.Empty) (*HasSupportResponse, error)
	IsUsed(context.Context, *emptypb.Empty) (*IsUsedResponse, error)
	SetUsed(context.Context, *SetUsedRequest) (*emptypb.Empty, error)
	GetConnectionInfo(context.Context, *emptypb.Empty) (*GetConnectionInfoResponse, error)
	SetConnectionInfo(context.Context, *SetConnectionInfoRequest) (*emptypb.Empty, error)
	CheckDomainName(context.Context, *CheckDomainNameRequest) (*CheckDomainNameResponse, error)
	CheckAdminName(context.Context, *CheckAdminNameRequest) (*CheckAdminNameResponse, error)
	CheckPassword(context.Context, *CheckPasswordRequest) (*CheckPasswordResponse, error)
	PingDomainController(context.Context, *PingDomainControllerRequest) (*PingDomainControllerResponse, error)
	GetJoinResult(context.Context, *GetJoinResultRequest) (*GetJoinResultResponse, error)
	mustEmbedUnimplementedActiveDirectoryServiceServer()
}

// UnimplementedActiveDirectoryServiceServer must be embedded to have
// forward compatible implementations.
//
// NOTE: this should be embedded by value instead of pointer to avoid a nil
// pointer dereference when methods are called.
type UnimplementedActiveDirectoryServiceServer struct{}

func (UnimplementedActiveDirectoryServiceServer) HasSupport(context.Context, *emptypb.Empty) (*HasSupportResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method HasSupport not implemented")
}
func (UnimplementedActiveDirectoryServiceServer) IsUsed(context.Context, *emptypb.Empty) (*IsUsedResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method IsUsed not implemented")
}
func (UnimplementedActiveDirectoryServiceServer) SetUsed(context.Context, *SetUsedRequest) (*emptypb.Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetUsed not implemented")
}
func (UnimplementedActiveDirectoryServiceServer) GetConnectionInfo(context.Context, *emptypb.Empty) (*GetConnectionInfoResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetConnectionInfo not implemented")
}
func (UnimplementedActiveDirectoryServiceServer) SetConnectionInfo(context.Context, *SetConnectionInfoRequest) (*emptypb.Empty, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SetConnectionInfo not implemented")
}
func (UnimplementedActiveDirectoryServiceServer) CheckDomainName(context.Context, *CheckDomainNameRequest) (*CheckDomainNameResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CheckDomainName not implemented")
}
func (UnimplementedActiveDirectoryServiceServer) CheckAdminName(context.Context, *CheckAdminNameRequest) (*CheckAdminNameResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CheckAdminName not implemented")
}
func (UnimplementedActiveDirectoryServiceServer) CheckPassword(context.Context, *CheckPasswordRequest) (*CheckPasswordResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CheckPassword not implemented")
}
func (UnimplementedActiveDirectoryServiceServer) PingDomainController(context.Context, *PingDomainControllerRequest) (*PingDomainControllerResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method PingDomainController not implemented")
}
func (UnimplementedActiveDirectoryServiceServer) GetJoinResult(context.Context, *GetJoinResultRequest) (*GetJoinResultResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetJoinResult not implemented")
}
func (UnimplementedActiveDirectoryServiceServer) mustEmbedUnimplementedActiveDirectoryServiceServer() {
}
func (UnimplementedActiveDirectoryServiceServer) testEmbeddedByValue() {}

// UnsafeActiveDirectoryServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to ActiveDirectoryServiceServer will
// result in compilation errors.
type UnsafeActiveDirectoryServiceServer interface {
	mustEmbedUnimplementedActiveDirectoryServiceServer()
}

func RegisterActiveDirectoryServiceServer(s grpc.ServiceRegistrar, srv ActiveDirectoryServiceServer) {
	// If the following call pancis, it indicates UnimplementedActiveDirectoryServiceServer was
	// embedded by pointer and is nil.  This will cause panics if an
	// unimplemented method is ever invoked, so we test this at initialization
	// time to prevent it from happening at runtime later due to I/O.
	if t, ok := srv.(interface{ testEmbeddedByValue() }); ok {
		t.testEmbeddedByValue()
	}
	s.RegisterService(&ActiveDirectoryService_ServiceDesc, srv)
}

func _ActiveDirectoryService_HasSupport_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(emptypb.Empty)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ActiveDirectoryServiceServer).HasSupport(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: ActiveDirectoryService_HasSupport_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ActiveDirectoryServiceServer).HasSupport(ctx, req.(*emptypb.Empty))
	}
	return interceptor(ctx, in, info, handler)
}

func _ActiveDirectoryService_IsUsed_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(emptypb.Empty)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ActiveDirectoryServiceServer).IsUsed(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: ActiveDirectoryService_IsUsed_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ActiveDirectoryServiceServer).IsUsed(ctx, req.(*emptypb.Empty))
	}
	return interceptor(ctx, in, info, handler)
}

func _ActiveDirectoryService_SetUsed_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(SetUsedRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ActiveDirectoryServiceServer).SetUsed(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: ActiveDirectoryService_SetUsed_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ActiveDirectoryServiceServer).SetUsed(ctx, req.(*SetUsedRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _ActiveDirectoryService_GetConnectionInfo_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(emptypb.Empty)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ActiveDirectoryServiceServer).GetConnectionInfo(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: ActiveDirectoryService_GetConnectionInfo_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ActiveDirectoryServiceServer).GetConnectionInfo(ctx, req.(*emptypb.Empty))
	}
	return interceptor(ctx, in, info, handler)
}

func _ActiveDirectoryService_SetConnectionInfo_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(SetConnectionInfoRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ActiveDirectoryServiceServer).SetConnectionInfo(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: ActiveDirectoryService_SetConnectionInfo_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ActiveDirectoryServiceServer).SetConnectionInfo(ctx, req.(*SetConnectionInfoRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _ActiveDirectoryService_CheckDomainName_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CheckDomainNameRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ActiveDirectoryServiceServer).CheckDomainName(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: ActiveDirectoryService_CheckDomainName_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ActiveDirectoryServiceServer).CheckDomainName(ctx, req.(*CheckDomainNameRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _ActiveDirectoryService_CheckAdminName_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CheckAdminNameRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ActiveDirectoryServiceServer).CheckAdminName(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: ActiveDirectoryService_CheckAdminName_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ActiveDirectoryServiceServer).CheckAdminName(ctx, req.(*CheckAdminNameRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _ActiveDirectoryService_CheckPassword_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CheckPasswordRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ActiveDirectoryServiceServer).CheckPassword(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: ActiveDirectoryService_CheckPassword_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ActiveDirectoryServiceServer).CheckPassword(ctx, req.(*CheckPasswordRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _ActiveDirectoryService_PingDomainController_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(PingDomainControllerRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ActiveDirectoryServiceServer).PingDomainController(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: ActiveDirectoryService_PingDomainController_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ActiveDirectoryServiceServer).PingDomainController(ctx, req.(*PingDomainControllerRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _ActiveDirectoryService_GetJoinResult_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetJoinResultRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ActiveDirectoryServiceServer).GetJoinResult(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: ActiveDirectoryService_GetJoinResult_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ActiveDirectoryServiceServer).GetJoinResult(ctx, req.(*GetJoinResultRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// ActiveDirectoryService_ServiceDesc is the grpc.ServiceDesc for ActiveDirectoryService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var ActiveDirectoryService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "active_directory.ActiveDirectoryService",
	HandlerType: (*ActiveDirectoryServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "HasSupport",
			Handler:    _ActiveDirectoryService_HasSupport_Handler,
		},
		{
			MethodName: "IsUsed",
			Handler:    _ActiveDirectoryService_IsUsed_Handler,
		},
		{
			MethodName: "SetUsed",
			Handler:    _ActiveDirectoryService_SetUsed_Handler,
		},
		{
			MethodName: "GetConnectionInfo",
			Handler:    _ActiveDirectoryService_GetConnectionInfo_Handler,
		},
		{
			MethodName: "SetConnectionInfo",
			Handler:    _ActiveDirectoryService_SetConnectionInfo_Handler,
		},
		{
			MethodName: "CheckDomainName",
			Handler:    _ActiveDirectoryService_CheckDomainName_Handler,
		},
		{
			MethodName: "CheckAdminName",
			Handler:    _ActiveDirectoryService_CheckAdminName_Handler,
		},
		{
			MethodName: "CheckPassword",
			Handler:    _ActiveDirectoryService_CheckPassword_Handler,
		},
		{
			MethodName: "PingDomainController",
			Handler:    _ActiveDirectoryService_PingDomainController_Handler,
		},
		{
			MethodName: "GetJoinResult",
			Handler:    _ActiveDirectoryService_GetJoinResult_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "protos/ad.proto",
}
