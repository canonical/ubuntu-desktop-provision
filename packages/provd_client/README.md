# Dart Client for provd

## Generating protos:

* Install `protoc` with `apt install protobuf-compiler` or `snap install protobuf`.
* Install `protoc-gen-dart` with `pub global activate protoc-gen-dart`.
* Run `melos protoc`

or manually:

```shell
protoc \
    --dart_out=grpc:./lib/src/generated \
    -I../../provd/proto \
    ../../provd/proto/*.proto
```
