import 'dart:async';
import 'dart:convert';
import 'dart:io';

enum JournalOutput {
  /// The default and generates an output that is mostly identical to the
  /// formatting of classic syslog files, showing one line per journal entry.
  short,

  /// A very terse output, only showing the actual message of each journal entry
  /// with no metadata, not even a timestamp
  cat,
}

/// Provides `journalctl` output.
class JournalService {
  /// Starts a `journalctl` process.
  Stream<String> start(
    List<String> ids, {
    JournalOutput output = JournalOutput.short,
  }) {
    Process? process;
    // ignore: close_sinks
    late final StreamController<String> controller;

    Process.start(
      'journalctl',
      [
        '--follow',
        '--no-pager',
        '--no-tail',
        for (final id in ids) '--identifier=$id',
        '--output=${output.name}'
      ],
      environment: {'SYSTEMD_COLORS': '0'},
    ).then(
      (p) {
        p.stdout
            .transform<String>(utf8.decoder)
            .transform<String>(const LineSplitter())
            .forEach(controller.add);
        p.stderr
            .transform<String>(utf8.decoder)
            .transform<String>(const LineSplitter())
            .forEach(controller.add);
        process = p;
      },
    );
    controller = StreamController<String>.broadcast(onCancel: process?.kill);
    return controller.stream;
  }
}
