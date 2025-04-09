// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.32.0
// 	protoc        v3.21.12
// source: protos/pro.proto

package proto

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	emptypb "google.golang.org/protobuf/types/known/emptypb"
	wrapperspb "google.golang.org/protobuf/types/known/wrapperspb"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type ProMagicAttachResponseType int32

const (
	ProMagicAttachResponseType_USER_CODE                  ProMagicAttachResponseType = 0
	ProMagicAttachResponseType_REFRESHED_USER_CODE        ProMagicAttachResponseType = 1
	ProMagicAttachResponseType_SUCCESS                    ProMagicAttachResponseType = 2
	ProMagicAttachResponseType_NETWORK_ERROR              ProMagicAttachResponseType = 3
	ProMagicAttachResponseType_SUBSCRIPTION_LIMIT_REACHED ProMagicAttachResponseType = 4
	ProMagicAttachResponseType_UNKNOWN_ERROR              ProMagicAttachResponseType = 5
	ProMagicAttachResponseType_ALREADY_ATTACHED           ProMagicAttachResponseType = 6
)

// Enum value maps for ProMagicAttachResponseType.
var (
	ProMagicAttachResponseType_name = map[int32]string{
		0: "USER_CODE",
		1: "REFRESHED_USER_CODE",
		2: "SUCCESS",
		3: "NETWORK_ERROR",
		4: "SUBSCRIPTION_LIMIT_REACHED",
		5: "UNKNOWN_ERROR",
		6: "ALREADY_ATTACHED",
	}
	ProMagicAttachResponseType_value = map[string]int32{
		"USER_CODE":                  0,
		"REFRESHED_USER_CODE":        1,
		"SUCCESS":                    2,
		"NETWORK_ERROR":              3,
		"SUBSCRIPTION_LIMIT_REACHED": 4,
		"UNKNOWN_ERROR":              5,
		"ALREADY_ATTACHED":           6,
	}
)

func (x ProMagicAttachResponseType) Enum() *ProMagicAttachResponseType {
	p := new(ProMagicAttachResponseType)
	*p = x
	return p
}

func (x ProMagicAttachResponseType) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (ProMagicAttachResponseType) Descriptor() protoreflect.EnumDescriptor {
	return file_protos_pro_proto_enumTypes[0].Descriptor()
}

func (ProMagicAttachResponseType) Type() protoreflect.EnumType {
	return &file_protos_pro_proto_enumTypes[0]
}

func (x ProMagicAttachResponseType) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use ProMagicAttachResponseType.Descriptor instead.
func (ProMagicAttachResponseType) EnumDescriptor() ([]byte, []int) {
	return file_protos_pro_proto_rawDescGZIP(), []int{0}
}

type ProAttachResponse_ProAttachResponseType int32

const (
	ProAttachResponse_SUCCESS          ProAttachResponse_ProAttachResponseType = 0
	ProAttachResponse_NETWORK_ERROR    ProAttachResponse_ProAttachResponseType = 1
	ProAttachResponse_UNKNOWN_ERROR    ProAttachResponse_ProAttachResponseType = 2
	ProAttachResponse_ALREADY_ATTACHED ProAttachResponse_ProAttachResponseType = 3
)

// Enum value maps for ProAttachResponse_ProAttachResponseType.
var (
	ProAttachResponse_ProAttachResponseType_name = map[int32]string{
		0: "SUCCESS",
		1: "NETWORK_ERROR",
		2: "UNKNOWN_ERROR",
		3: "ALREADY_ATTACHED",
	}
	ProAttachResponse_ProAttachResponseType_value = map[string]int32{
		"SUCCESS":          0,
		"NETWORK_ERROR":    1,
		"UNKNOWN_ERROR":    2,
		"ALREADY_ATTACHED": 3,
	}
)

func (x ProAttachResponse_ProAttachResponseType) Enum() *ProAttachResponse_ProAttachResponseType {
	p := new(ProAttachResponse_ProAttachResponseType)
	*p = x
	return p
}

func (x ProAttachResponse_ProAttachResponseType) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (ProAttachResponse_ProAttachResponseType) Descriptor() protoreflect.EnumDescriptor {
	return file_protos_pro_proto_enumTypes[1].Descriptor()
}

func (ProAttachResponse_ProAttachResponseType) Type() protoreflect.EnumType {
	return &file_protos_pro_proto_enumTypes[1]
}

func (x ProAttachResponse_ProAttachResponseType) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use ProAttachResponse_ProAttachResponseType.Descriptor instead.
func (ProAttachResponse_ProAttachResponseType) EnumDescriptor() ([]byte, []int) {
	return file_protos_pro_proto_rawDescGZIP(), []int{1, 0}
}

type ProAttachRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Token string `protobuf:"bytes,1,opt,name=token,proto3" json:"token,omitempty"`
}

func (x *ProAttachRequest) Reset() {
	*x = ProAttachRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_protos_pro_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ProAttachRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ProAttachRequest) ProtoMessage() {}

func (x *ProAttachRequest) ProtoReflect() protoreflect.Message {
	mi := &file_protos_pro_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ProAttachRequest.ProtoReflect.Descriptor instead.
func (*ProAttachRequest) Descriptor() ([]byte, []int) {
	return file_protos_pro_proto_rawDescGZIP(), []int{0}
}

func (x *ProAttachRequest) GetToken() string {
	if x != nil {
		return x.Token
	}
	return ""
}

type ProAttachResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Type ProAttachResponse_ProAttachResponseType `protobuf:"varint,1,opt,name=type,proto3,enum=pro.ProAttachResponse_ProAttachResponseType" json:"type,omitempty"`
}

func (x *ProAttachResponse) Reset() {
	*x = ProAttachResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_protos_pro_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ProAttachResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ProAttachResponse) ProtoMessage() {}

func (x *ProAttachResponse) ProtoReflect() protoreflect.Message {
	mi := &file_protos_pro_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ProAttachResponse.ProtoReflect.Descriptor instead.
func (*ProAttachResponse) Descriptor() ([]byte, []int) {
	return file_protos_pro_proto_rawDescGZIP(), []int{1}
}

func (x *ProAttachResponse) GetType() ProAttachResponse_ProAttachResponseType {
	if x != nil {
		return x.Type
	}
	return ProAttachResponse_SUCCESS
}

type ProMagicAttachResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Type     ProMagicAttachResponseType `protobuf:"varint,1,opt,name=type,proto3,enum=pro.ProMagicAttachResponseType" json:"type,omitempty"`
	UserCode *string                    `protobuf:"bytes,2,opt,name=userCode,proto3,oneof" json:"userCode,omitempty"`
}

func (x *ProMagicAttachResponse) Reset() {
	*x = ProMagicAttachResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_protos_pro_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ProMagicAttachResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ProMagicAttachResponse) ProtoMessage() {}

func (x *ProMagicAttachResponse) ProtoReflect() protoreflect.Message {
	mi := &file_protos_pro_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ProMagicAttachResponse.ProtoReflect.Descriptor instead.
func (*ProMagicAttachResponse) Descriptor() ([]byte, []int) {
	return file_protos_pro_proto_rawDescGZIP(), []int{2}
}

func (x *ProMagicAttachResponse) GetType() ProMagicAttachResponseType {
	if x != nil {
		return x.Type
	}
	return ProMagicAttachResponseType_USER_CODE
}

func (x *ProMagicAttachResponse) GetUserCode() string {
	if x != nil && x.UserCode != nil {
		return *x.UserCode
	}
	return ""
}

var File_protos_pro_proto protoreflect.FileDescriptor

var file_protos_pro_proto_rawDesc = []byte{
	0x0a, 0x10, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x73, 0x2f, 0x70, 0x72, 0x6f, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x12, 0x03, 0x70, 0x72, 0x6f, 0x1a, 0x1b, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f, 0x65, 0x6d, 0x70, 0x74, 0x79, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f, 0x77, 0x72, 0x61, 0x70, 0x70, 0x65, 0x72, 0x73, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x22, 0x28, 0x0a, 0x10, 0x50, 0x72, 0x6f, 0x41, 0x74, 0x74, 0x61, 0x63,
	0x68, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x14, 0x0a, 0x05, 0x74, 0x6f, 0x6b, 0x65,
	0x6e, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x74, 0x6f, 0x6b, 0x65, 0x6e, 0x22, 0xb7,
	0x01, 0x0a, 0x11, 0x50, 0x72, 0x6f, 0x41, 0x74, 0x74, 0x61, 0x63, 0x68, 0x52, 0x65, 0x73, 0x70,
	0x6f, 0x6e, 0x73, 0x65, 0x12, 0x40, 0x0a, 0x04, 0x74, 0x79, 0x70, 0x65, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x0e, 0x32, 0x2c, 0x2e, 0x70, 0x72, 0x6f, 0x2e, 0x50, 0x72, 0x6f, 0x41, 0x74, 0x74, 0x61,
	0x63, 0x68, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x2e, 0x50, 0x72, 0x6f, 0x41, 0x74,
	0x74, 0x61, 0x63, 0x68, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x54, 0x79, 0x70, 0x65,
	0x52, 0x04, 0x74, 0x79, 0x70, 0x65, 0x22, 0x60, 0x0a, 0x15, 0x50, 0x72, 0x6f, 0x41, 0x74, 0x74,
	0x61, 0x63, 0x68, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x54, 0x79, 0x70, 0x65, 0x12,
	0x0b, 0x0a, 0x07, 0x53, 0x55, 0x43, 0x43, 0x45, 0x53, 0x53, 0x10, 0x00, 0x12, 0x11, 0x0a, 0x0d,
	0x4e, 0x45, 0x54, 0x57, 0x4f, 0x52, 0x4b, 0x5f, 0x45, 0x52, 0x52, 0x4f, 0x52, 0x10, 0x01, 0x12,
	0x11, 0x0a, 0x0d, 0x55, 0x4e, 0x4b, 0x4e, 0x4f, 0x57, 0x4e, 0x5f, 0x45, 0x52, 0x52, 0x4f, 0x52,
	0x10, 0x02, 0x12, 0x14, 0x0a, 0x10, 0x41, 0x4c, 0x52, 0x45, 0x41, 0x44, 0x59, 0x5f, 0x41, 0x54,
	0x54, 0x41, 0x43, 0x48, 0x45, 0x44, 0x10, 0x03, 0x22, 0x7b, 0x0a, 0x16, 0x50, 0x72, 0x6f, 0x4d,
	0x61, 0x67, 0x69, 0x63, 0x41, 0x74, 0x74, 0x61, 0x63, 0x68, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e,
	0x73, 0x65, 0x12, 0x33, 0x0a, 0x04, 0x74, 0x79, 0x70, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0e,
	0x32, 0x1f, 0x2e, 0x70, 0x72, 0x6f, 0x2e, 0x50, 0x72, 0x6f, 0x4d, 0x61, 0x67, 0x69, 0x63, 0x41,
	0x74, 0x74, 0x61, 0x63, 0x68, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x54, 0x79, 0x70,
	0x65, 0x52, 0x04, 0x74, 0x79, 0x70, 0x65, 0x12, 0x1f, 0x0a, 0x08, 0x75, 0x73, 0x65, 0x72, 0x43,
	0x6f, 0x64, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x48, 0x00, 0x52, 0x08, 0x75, 0x73, 0x65,
	0x72, 0x43, 0x6f, 0x64, 0x65, 0x88, 0x01, 0x01, 0x42, 0x0b, 0x0a, 0x09, 0x5f, 0x75, 0x73, 0x65,
	0x72, 0x43, 0x6f, 0x64, 0x65, 0x2a, 0xad, 0x01, 0x0a, 0x1a, 0x50, 0x72, 0x6f, 0x4d, 0x61, 0x67,
	0x69, 0x63, 0x41, 0x74, 0x74, 0x61, 0x63, 0x68, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65,
	0x54, 0x79, 0x70, 0x65, 0x12, 0x0d, 0x0a, 0x09, 0x55, 0x53, 0x45, 0x52, 0x5f, 0x43, 0x4f, 0x44,
	0x45, 0x10, 0x00, 0x12, 0x17, 0x0a, 0x13, 0x52, 0x45, 0x46, 0x52, 0x45, 0x53, 0x48, 0x45, 0x44,
	0x5f, 0x55, 0x53, 0x45, 0x52, 0x5f, 0x43, 0x4f, 0x44, 0x45, 0x10, 0x01, 0x12, 0x0b, 0x0a, 0x07,
	0x53, 0x55, 0x43, 0x43, 0x45, 0x53, 0x53, 0x10, 0x02, 0x12, 0x11, 0x0a, 0x0d, 0x4e, 0x45, 0x54,
	0x57, 0x4f, 0x52, 0x4b, 0x5f, 0x45, 0x52, 0x52, 0x4f, 0x52, 0x10, 0x03, 0x12, 0x1e, 0x0a, 0x1a,
	0x53, 0x55, 0x42, 0x53, 0x43, 0x52, 0x49, 0x50, 0x54, 0x49, 0x4f, 0x4e, 0x5f, 0x4c, 0x49, 0x4d,
	0x49, 0x54, 0x5f, 0x52, 0x45, 0x41, 0x43, 0x48, 0x45, 0x44, 0x10, 0x04, 0x12, 0x11, 0x0a, 0x0d,
	0x55, 0x4e, 0x4b, 0x4e, 0x4f, 0x57, 0x4e, 0x5f, 0x45, 0x52, 0x52, 0x4f, 0x52, 0x10, 0x05, 0x12,
	0x14, 0x0a, 0x10, 0x41, 0x4c, 0x52, 0x45, 0x41, 0x44, 0x59, 0x5f, 0x41, 0x54, 0x54, 0x41, 0x43,
	0x48, 0x45, 0x44, 0x10, 0x06, 0x32, 0xd2, 0x01, 0x0a, 0x0a, 0x50, 0x72, 0x6f, 0x53, 0x65, 0x72,
	0x76, 0x69, 0x63, 0x65, 0x12, 0x47, 0x0a, 0x0e, 0x50, 0x72, 0x6f, 0x4d, 0x61, 0x67, 0x69, 0x63,
	0x41, 0x74, 0x74, 0x61, 0x63, 0x68, 0x12, 0x16, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x45, 0x6d, 0x70, 0x74, 0x79, 0x1a, 0x1b,
	0x2e, 0x70, 0x72, 0x6f, 0x2e, 0x50, 0x72, 0x6f, 0x4d, 0x61, 0x67, 0x69, 0x63, 0x41, 0x74, 0x74,
	0x61, 0x63, 0x68, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x30, 0x01, 0x12, 0x3a, 0x0a,
	0x09, 0x50, 0x72, 0x6f, 0x41, 0x74, 0x74, 0x61, 0x63, 0x68, 0x12, 0x15, 0x2e, 0x70, 0x72, 0x6f,
	0x2e, 0x50, 0x72, 0x6f, 0x41, 0x74, 0x74, 0x61, 0x63, 0x68, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73,
	0x74, 0x1a, 0x16, 0x2e, 0x70, 0x72, 0x6f, 0x2e, 0x50, 0x72, 0x6f, 0x41, 0x74, 0x74, 0x61, 0x63,
	0x68, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x3f, 0x0a, 0x09, 0x50, 0x72, 0x6f,
	0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x12, 0x16, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x45, 0x6d, 0x70, 0x74, 0x79, 0x1a, 0x1a,
	0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66,
	0x2e, 0x42, 0x6f, 0x6f, 0x6c, 0x56, 0x61, 0x6c, 0x75, 0x65, 0x42, 0x3b, 0x5a, 0x39, 0x67, 0x69,
	0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x63, 0x61, 0x6e, 0x6f, 0x6e, 0x69, 0x63,
	0x61, 0x6c, 0x2f, 0x75, 0x62, 0x75, 0x6e, 0x74, 0x75, 0x2d, 0x64, 0x65, 0x73, 0x6b, 0x74, 0x6f,
	0x70, 0x2d, 0x70, 0x72, 0x6f, 0x76, 0x69, 0x73, 0x69, 0x6f, 0x6e, 0x2f, 0x70, 0x72, 0x6f, 0x76,
	0x64, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_protos_pro_proto_rawDescOnce sync.Once
	file_protos_pro_proto_rawDescData = file_protos_pro_proto_rawDesc
)

func file_protos_pro_proto_rawDescGZIP() []byte {
	file_protos_pro_proto_rawDescOnce.Do(func() {
		file_protos_pro_proto_rawDescData = protoimpl.X.CompressGZIP(file_protos_pro_proto_rawDescData)
	})
	return file_protos_pro_proto_rawDescData
}

var file_protos_pro_proto_enumTypes = make([]protoimpl.EnumInfo, 2)
var file_protos_pro_proto_msgTypes = make([]protoimpl.MessageInfo, 3)
var file_protos_pro_proto_goTypes = []interface{}{
	(ProMagicAttachResponseType)(0),              // 0: pro.ProMagicAttachResponseType
	(ProAttachResponse_ProAttachResponseType)(0), // 1: pro.ProAttachResponse.ProAttachResponseType
	(*ProAttachRequest)(nil),                     // 2: pro.ProAttachRequest
	(*ProAttachResponse)(nil),                    // 3: pro.ProAttachResponse
	(*ProMagicAttachResponse)(nil),               // 4: pro.ProMagicAttachResponse
	(*emptypb.Empty)(nil),                        // 5: google.protobuf.Empty
	(*wrapperspb.BoolValue)(nil),                 // 6: google.protobuf.BoolValue
}
var file_protos_pro_proto_depIdxs = []int32{
	1, // 0: pro.ProAttachResponse.type:type_name -> pro.ProAttachResponse.ProAttachResponseType
	0, // 1: pro.ProMagicAttachResponse.type:type_name -> pro.ProMagicAttachResponseType
	5, // 2: pro.ProService.ProMagicAttach:input_type -> google.protobuf.Empty
	2, // 3: pro.ProService.ProAttach:input_type -> pro.ProAttachRequest
	5, // 4: pro.ProService.ProStatus:input_type -> google.protobuf.Empty
	4, // 5: pro.ProService.ProMagicAttach:output_type -> pro.ProMagicAttachResponse
	3, // 6: pro.ProService.ProAttach:output_type -> pro.ProAttachResponse
	6, // 7: pro.ProService.ProStatus:output_type -> google.protobuf.BoolValue
	5, // [5:8] is the sub-list for method output_type
	2, // [2:5] is the sub-list for method input_type
	2, // [2:2] is the sub-list for extension type_name
	2, // [2:2] is the sub-list for extension extendee
	0, // [0:2] is the sub-list for field type_name
}

func init() { file_protos_pro_proto_init() }
func file_protos_pro_proto_init() {
	if File_protos_pro_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_protos_pro_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ProAttachRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_protos_pro_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ProAttachResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_protos_pro_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ProMagicAttachResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	file_protos_pro_proto_msgTypes[2].OneofWrappers = []interface{}{}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_protos_pro_proto_rawDesc,
			NumEnums:      2,
			NumMessages:   3,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_protos_pro_proto_goTypes,
		DependencyIndexes: file_protos_pro_proto_depIdxs,
		EnumInfos:         file_protos_pro_proto_enumTypes,
		MessageInfos:      file_protos_pro_proto_msgTypes,
	}.Build()
	File_protos_pro_proto = out.File
	file_protos_pro_proto_rawDesc = nil
	file_protos_pro_proto_goTypes = nil
	file_protos_pro_proto_depIdxs = nil
}
