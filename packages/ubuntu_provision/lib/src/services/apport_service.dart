import 'dart:io';

import 'package:meta/meta.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

final _log = Logger('apport_service');

class ApportService {
  ApportService({
    this.liveRun = true,
    this.preCommands,
    @visibleForTesting
    Future<ProcessResult> Function(String, List<String>)? runProcess,
    @visibleForTesting Map<String, String>? env,
  })  : runProcess = runProcess ?? Process.run,
        env = env ?? Platform.environment;

  static const String apport = 'ubuntu-bug';

  final bool liveRun;
  final Future<ProcessResult> Function(String, List<String>) runProcess;
  final Map<String, String> env;
  final List<({String cmd, List<String> args})>? preCommands;

  Future<void> launch() async {
    final snapName = env['SNAP_NAME'];
    if (snapName == null) {
      _log.error('SNAP_NAME environment variable not set');
      return;
    }
    if (liveRun) {
      if (preCommands != null) {
        for (final command in preCommands!) {
          _log.info(
            'Running pre-command ${command.cmd} ${command.args.join(' ')}',
          );
          final result = await runProcess(command.cmd, command.args);
          if (result.exitCode != 0) {
            _log.error('Failed to run ${command.cmd}: ${result.stderr}');
          }
        }
      }
      _log.info('Running apport for $snapName');
      final result = await runProcess(apport, [snapName]);
      if (result.exitCode != 0) {
        _log.error('Failed to run apport for $snapName: ${result.stderr}');
      }
    } else {
      if (preCommands != null) {
        for (final command in preCommands!) {
          _log.info(
            'Dry-run: Running pre-command ${command.cmd} ${command.args.join(' ')}',
          );
        }
      }
      _log.info('Dry-run: Running apport for $snapName');
    }
  }
}
