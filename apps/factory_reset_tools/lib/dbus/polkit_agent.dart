import 'dart:ffi';
import 'dart:io' show Platform, Process, ProcessStartMode, stdin;

import 'package:ffi/ffi.dart';
import 'package:path/path.dart' as path;

// typedef from glib gerror.h
final class PipeFds extends Struct {
  @Int()
  external int fd0;

  @Int()
  external int fd1;
}

typedef PolkitAgentPipe = Int Function(Pointer<PipeFds>);
typedef PolkitAgentPipeNative = int Function(Pointer<PipeFds>);
typedef PolkitAgentWait = Void Function(Pointer<PipeFds>);
typedef PolkitAgentWaitNative = void Function(Pointer<PipeFds>);

class PkttyAgent {
  factory PkttyAgent() {
    final exePath = Platform.script.toFilePath();
    final libraryPath =
        path.join(path.dirname(exePath), 'polkit_agent_helper', 'helper.so');
    final dylib = DynamicLibrary.open(libraryPath);
    final fnPipe = dylib
        .lookupFunction<PolkitAgentPipe, PolkitAgentPipeNative>('pkagent_pipe');
    final fnWait = dylib
        .lookupFunction<PolkitAgentWait, PolkitAgentWaitNative>('pkagent_wait');
    return PkttyAgent.withFunctions(fnPipe: fnPipe, fnWait: fnWait);
  }

  PkttyAgent.withFunctions({required this.fnPipe, required this.fnWait});

  PolkitAgentPipeNative fnPipe;
  PolkitAgentWaitNative fnWait;

  Process? process;

  Future<void> start() async {
    if (!stdin.hasTerminal) {
      return;
    }

    final pipeFds = malloc.allocate<PipeFds>(sizeOf<PipeFds>());
    try {
      final result = fnPipe(pipeFds);
      if (result != 0) {
        throw 'polkit_agent: unable to create pipefd';
      }

      process = await Process.start(
        'pkttyagent',
        ['--notify-fd', pipeFds.ref.fd1.toString()],
        mode: ProcessStartMode.inheritStdio,
      );

      fnWait(pipeFds);
    } finally {
      malloc.free(pipeFds);
    }
  }

  void stop() {
    process?.kill();
  }
}
