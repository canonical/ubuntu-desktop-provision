import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

export 'package:subiquity_client/subiquity_client.dart' show ApplicationState;

final errorModelProvider = StateProvider((ref) {
  final logStream = ref.watch(logStreamProvider);
  return ErrorModel(
    session: getService<SessionService>(),
    apport: getService<ApportService>(),
    isLogVisible: false,
    logStream: logStream,
  );
});

final logStreamProvider = Provider<Stream<String>>((ref) {
  final client = getService<SubiquityClient>();
  final journal = getService<JournalService>();
  final logController = StreamController<String>();
  client.getStatus().then((status) {
    if (status.nonreportableError != null) {
      logController.add(status.nonreportableError!.message);
      logController.add(status.nonreportableError!.cause);
    }
    journal.start([status.logSyslogId, status.eventSyslogId]).listen(
      logController.add,
    );
  });

  ref.onDispose(logController.close);

  return logController.stream;
});

@immutable
class ErrorModel {
  const ErrorModel({
    required this.session,
    required this.apport,
    required this.isLogVisible,
    required this.logStream,
  });

  /// The session service.
  final SessionService session;

  /// The Apport service.
  final ApportService apport;

  /// Whether the log is visible or not,
  final bool isLogVisible;

  /// The stream of log events.
  final Stream<String> logStream;

  Future<void> reboot() => session.reboot();

  Future<void> launchApport() => apport.launch();

  ErrorModel copyWith({
    bool? isLogVisible,
  }) {
    return ErrorModel(
      session: session,
      apport: apport,
      logStream: logStream,
      isLogVisible: isLogVisible ?? this.isLogVisible,
    );
  }
}
