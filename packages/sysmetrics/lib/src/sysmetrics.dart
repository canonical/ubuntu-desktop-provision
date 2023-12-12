import 'dart:ffi' as ffi;
import 'dart:isolate';

import 'package:ffi/ffi.dart' as ffi;

import 'package:sysmetrics/src/libsysmetrics.dart';

/// Defines the desired kind of interaction in [Sysmetrics.collectAndSend]
enum ReportType {
  /// Shows report content on stdout and read anwser on stdin.
  interactive,

  /// Sends a report without printing report.
  auto,

  /// Sends opt-out message without printing report.
  optout,
}

class Sysmetrics {
  // Collect system info and return a pretty printed version of collected data.
  Future<String?> collect() {
    return Isolate.run(
      () => ffi.using((arena) {
        final out = arena<ffi.Pointer<ffi.Char>>();
        lib.sysmetrics_collect(out);
        return out.value.toDartString();
      }),
    );
  }

  /// Sends provided metrics data to server.
  ///
  /// The report will not be sent if a report has already been sent for this
  /// version unless `alwaysReport` is true. If specified, `baseURL` overrides
  /// the server the report is sent to.
  Future<String?> sendReport(
    String data, {
    bool alwaysReport = false,
    String baseUrl = '',
  }) {
    return Isolate.run(
      () => ffi.using((arena) {
        return lib
            .sysmetrics_send_report(
              data.toCString(arena),
              alwaysReport.toInt(),
              baseUrl.toCString(arena),
            )
            .toDartString();
      }),
    );
  }

  /// Sends denial message to server.
  ///
  /// The denial message will not be sent if a report has already been sent for
  /// this version unless `alwaysReport` is true. If specified, `baseURL`
  /// overrides the server the report is sent to.
  Future<String?> sendDecline(
      {bool alwaysReport = false, String baseUrl = ''}) {
    return Isolate.run(
      () => ffi.using((arena) {
        return lib
            .sysmetrics_send_decline(
              alwaysReport.toInt(),
              baseUrl.toCString(arena),
            )
            .toDartString();
      }),
    );
  }

  /// Gather system info and send them.
  ///
  /// The report will not be sent if a report has already been sent for this version unless "alwaysReport" is true.
  /// It can be send to an alternative url via baseURL to send the report to, if not empty
  Future<String?> collectAndSend(
    ReportType type, {
    bool alwaysReport = false,
    String baseUrl = '',
  }) {
    return Isolate.run(
      () => ffi.using((arena) {
        return lib
            .sysmetrics_collect_and_send(
              type.index,
              alwaysReport.toInt(),
              baseUrl.toCString(arena),
            )
            .toDartString();
      }),
    );
  }
}

extension on ffi.Pointer<ffi.Char> {
  String? toDartString() =>
      this == ffi.nullptr ? null : cast<ffi.Utf8>().toDartString();
}

extension on String {
  ffi.Pointer<ffi.Char> toCString(ffi.Allocator alloc) {
    return toNativeUtf8(allocator: alloc).cast();
  }
}

extension on bool {
  int toInt() => this ? 1 : 0;
}
