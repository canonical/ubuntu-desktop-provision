import 'dart:io';
import 'package:args/command_runner.dart';
import 'package:factory_reset_tools/dbus/dbus_daemon.dart';
import 'package:factory_reset_tools/dbus/factory_reset.dart';
import 'package:factory_reset_tools/dbus/reset_media.dart';

/// Command line entrypoint of factory-reset-tools
class CreateResetMediaCommand extends Command<void> {
  CreateResetMediaCommand() {
    argParser.addOption(
      'rp-uuid',
      help: 'Use another reset partition filesystem UUID',
      valueHelp: '1234-ABCD',
    );
  }
  @override
  final name = 'create-reset-media';
  @override
  final description = 'Create a reset media from reset partition';
  @override
  String get invocation {
    final parents = [name];
    for (var command = parent; command != null; command = command.parent) {
      parents.add(command.name);
    }
    parents.add(runner!.executableName);

    final invocation = parents.reversed.join(' ');
    return '$invocation [arguments] disk-path';
  }

  @override
  Future<void> run() async {
    final argResults = this.argResults!;
    final fsuuid = argResults['rp-uuid'] as String?;
    if (argResults.rest.isEmpty) {
      printUsage();
      throw Exception('missing disk path');
    }
    await for (final progress in createResetMedia(
      argResults.rest[0],
      fsuuid: fsuuid,
    )) {
      stdout.write(
        "${((progress.percent ?? 0.0) * 100).toStringAsFixed(2)}% ${progress.status.name} ${progress.errMsg ?? ""}"
            .padRight(75),
      );
      stdout.write('\r');
    }
    stdout.writeln();
    exit(0);
  }
}

class RebootCommand extends Command<void> {
  RebootCommand();
  @override
  final name = 'reboot';

  @override
  final description =
      'Reset into reset partition, or any other preconfigured options.\n'
      'If no option is given, a list of available options will be listed.';

  @override
  String get invocation {
    final parents = [name];
    for (var command = parent; command != null; command = command.parent) {
      parents.add(command.name);
    }
    parents.add(runner!.executableName);

    final invocation = parents.reversed.join(' ');
    return '$invocation [reboot-option]';
  }

  @override
  Future<void> run() async {
    final argResults = this.argResults!;
    if (argResults.rest.isEmpty) {
      final options = getResetOptions();
      stdout.writeln('List of available options:\n');
      for (final option in options) {
        stdout.writeln('${option.type.value}: ${option.title}');
        if (option.description != null) {
          stdout.writeln('  ${option.description}');
        }
        stdout.writeln();
      }
      return;
    }
    await startCommandViaDbus(ResetOptionType.fromString(argResults.rest[0]));
    exit(0);
  }
}

class DBusCommand extends Command<void> {
  DBusCommand();
  @override
  final name = 'dbus';
  @override
  final description = 'Starts a DBus daemon';
  @override
  final hidden = true;

  @override
  Future<void> run() async {
    await runDBusDaemon();
  }
}

void main(List<String> args) async {
  final runner = CommandRunner(
    'factory-reset-tools-cli',
    'Command line utility for factory reset.',
  )
    ..addCommand(CreateResetMediaCommand())
    ..addCommand(RebootCommand())
    ..addCommand(DBusCommand());
  await runner.run(args);
}
