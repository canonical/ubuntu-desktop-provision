// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.32.0
// 	protoc        v3.21.12
// source: protos/timezone.proto

package proto

import (
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	emptypb "google.golang.org/protobuf/types/known/emptypb"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type SetTimezoneRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Timezone string `protobuf:"bytes,1,opt,name=timezone,proto3" json:"timezone,omitempty"`
}

func (x *SetTimezoneRequest) Reset() {
	*x = SetTimezoneRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_protos_timezone_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *SetTimezoneRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SetTimezoneRequest) ProtoMessage() {}

func (x *SetTimezoneRequest) ProtoReflect() protoreflect.Message {
	mi := &file_protos_timezone_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SetTimezoneRequest.ProtoReflect.Descriptor instead.
func (*SetTimezoneRequest) Descriptor() ([]byte, []int) {
	return file_protos_timezone_proto_rawDescGZIP(), []int{0}
}

func (x *SetTimezoneRequest) GetTimezone() string {
	if x != nil {
		return x.Timezone
	}
	return ""
}

type GetTimezoneResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Timezone string `protobuf:"bytes,1,opt,name=timezone,proto3" json:"timezone,omitempty"`
}

func (x *GetTimezoneResponse) Reset() {
	*x = GetTimezoneResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_protos_timezone_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetTimezoneResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetTimezoneResponse) ProtoMessage() {}

func (x *GetTimezoneResponse) ProtoReflect() protoreflect.Message {
	mi := &file_protos_timezone_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetTimezoneResponse.ProtoReflect.Descriptor instead.
func (*GetTimezoneResponse) Descriptor() ([]byte, []int) {
	return file_protos_timezone_proto_rawDescGZIP(), []int{1}
}

func (x *GetTimezoneResponse) GetTimezone() string {
	if x != nil {
		return x.Timezone
	}
	return ""
}

var File_protos_timezone_proto protoreflect.FileDescriptor

var file_protos_timezone_proto_rawDesc = []byte{
	0x0a, 0x15, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x73, 0x2f, 0x74, 0x69, 0x6d, 0x65, 0x7a, 0x6f, 0x6e,
	0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x08, 0x74, 0x69, 0x6d, 0x65, 0x7a, 0x6f, 0x6e,
	0x65, 0x1a, 0x1b, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62,
	0x75, 0x66, 0x2f, 0x65, 0x6d, 0x70, 0x74, 0x79, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x30,
	0x0a, 0x12, 0x53, 0x65, 0x74, 0x54, 0x69, 0x6d, 0x65, 0x7a, 0x6f, 0x6e, 0x65, 0x52, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x12, 0x1a, 0x0a, 0x08, 0x74, 0x69, 0x6d, 0x65, 0x7a, 0x6f, 0x6e, 0x65,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x74, 0x69, 0x6d, 0x65, 0x7a, 0x6f, 0x6e, 0x65,
	0x22, 0x31, 0x0a, 0x13, 0x47, 0x65, 0x74, 0x54, 0x69, 0x6d, 0x65, 0x7a, 0x6f, 0x6e, 0x65, 0x52,
	0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x1a, 0x0a, 0x08, 0x74, 0x69, 0x6d, 0x65, 0x7a,
	0x6f, 0x6e, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x74, 0x69, 0x6d, 0x65, 0x7a,
	0x6f, 0x6e, 0x65, 0x32, 0xa0, 0x01, 0x0a, 0x0f, 0x54, 0x69, 0x6d, 0x65, 0x7a, 0x6f, 0x6e, 0x65,
	0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x12, 0x45, 0x0a, 0x0b, 0x53, 0x65, 0x74, 0x54, 0x69,
	0x6d, 0x65, 0x7a, 0x6f, 0x6e, 0x65, 0x12, 0x1c, 0x2e, 0x74, 0x69, 0x6d, 0x65, 0x7a, 0x6f, 0x6e,
	0x65, 0x2e, 0x53, 0x65, 0x74, 0x54, 0x69, 0x6d, 0x65, 0x7a, 0x6f, 0x6e, 0x65, 0x52, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x1a, 0x16, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x45, 0x6d, 0x70, 0x74, 0x79, 0x22, 0x00, 0x12, 0x46,
	0x0a, 0x0b, 0x47, 0x65, 0x74, 0x54, 0x69, 0x6d, 0x65, 0x7a, 0x6f, 0x6e, 0x65, 0x12, 0x16, 0x2e,
	0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e,
	0x45, 0x6d, 0x70, 0x74, 0x79, 0x1a, 0x1d, 0x2e, 0x74, 0x69, 0x6d, 0x65, 0x7a, 0x6f, 0x6e, 0x65,
	0x2e, 0x47, 0x65, 0x74, 0x54, 0x69, 0x6d, 0x65, 0x7a, 0x6f, 0x6e, 0x65, 0x52, 0x65, 0x73, 0x70,
	0x6f, 0x6e, 0x73, 0x65, 0x22, 0x00, 0x42, 0x3b, 0x5a, 0x39, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62,
	0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x63, 0x61, 0x6e, 0x6f, 0x6e, 0x69, 0x63, 0x61, 0x6c, 0x2f, 0x75,
	0x62, 0x75, 0x6e, 0x74, 0x75, 0x2d, 0x64, 0x65, 0x73, 0x6b, 0x74, 0x6f, 0x70, 0x2d, 0x70, 0x72,
	0x6f, 0x76, 0x69, 0x73, 0x69, 0x6f, 0x6e, 0x2f, 0x70, 0x72, 0x6f, 0x76, 0x64, 0x2f, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_protos_timezone_proto_rawDescOnce sync.Once
	file_protos_timezone_proto_rawDescData = file_protos_timezone_proto_rawDesc
)

func file_protos_timezone_proto_rawDescGZIP() []byte {
	file_protos_timezone_proto_rawDescOnce.Do(func() {
		file_protos_timezone_proto_rawDescData = protoimpl.X.CompressGZIP(file_protos_timezone_proto_rawDescData)
	})
	return file_protos_timezone_proto_rawDescData
}

var file_protos_timezone_proto_msgTypes = make([]protoimpl.MessageInfo, 2)
var file_protos_timezone_proto_goTypes = []interface{}{
	(*SetTimezoneRequest)(nil),  // 0: timezone.SetTimezoneRequest
	(*GetTimezoneResponse)(nil), // 1: timezone.GetTimezoneResponse
	(*emptypb.Empty)(nil),       // 2: google.protobuf.Empty
}
var file_protos_timezone_proto_depIdxs = []int32{
	0, // 0: timezone.TimezoneService.SetTimezone:input_type -> timezone.SetTimezoneRequest
	2, // 1: timezone.TimezoneService.GetTimezone:input_type -> google.protobuf.Empty
	2, // 2: timezone.TimezoneService.SetTimezone:output_type -> google.protobuf.Empty
	1, // 3: timezone.TimezoneService.GetTimezone:output_type -> timezone.GetTimezoneResponse
	2, // [2:4] is the sub-list for method output_type
	0, // [0:2] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_protos_timezone_proto_init() }
func file_protos_timezone_proto_init() {
	if File_protos_timezone_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_protos_timezone_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*SetTimezoneRequest); i {
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
		file_protos_timezone_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GetTimezoneResponse); i {
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
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_protos_timezone_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   2,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_protos_timezone_proto_goTypes,
		DependencyIndexes: file_protos_timezone_proto_depIdxs,
		MessageInfos:      file_protos_timezone_proto_msgTypes,
	}.Build()
	File_protos_timezone_proto = out.File
	file_protos_timezone_proto_rawDesc = nil
	file_protos_timezone_proto_goTypes = nil
	file_protos_timezone_proto_depIdxs = nil
}
