import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

import 'endpoint.dart';
import 'server/paths.dart';
import 'server/process.dart';
import 'types.dart';

const _kWaitTimes = 90;
const _kWaitDuration = Duration(seconds: 1);

// TODO(Lukas): Rename enums to dart style.
// ignore: constant_identifier_names
enum ServerMode { LIVE, DRY_RUN }

@internal
final log = Logger('subiquity_server');

Future<Endpoint> defaultEndpoint(ServerMode serverMode) async {
  final socketPath = await getSocketPath(serverMode);
  return Endpoint.unix(socketPath);
}

class SubiquityServer {
  SubiquityServer({required this.endpoint, this.process});

  /// An optional server launcher, should we need to start the server.
  SubiquityProcess? process;
  final Endpoint endpoint;

  Future<Endpoint> start({
    List<String>? args,
    Map<String, String>? environment,
  }) async {
    if (process != null) {
      await process!.start(additionalArgs: args, additionalEnv: environment);
    }

    return _waitSubiquity(endpoint).then((_) => endpoint);
  }

  static Future<void> _waitSubiquity(Endpoint endpoint) async {
    final client = HttpClient();
    client.connectionFactory = (uri, proxyHost, proxyPort) async {
      return Socket.startConnect(endpoint.address, endpoint.port);
    };

    // allow some time for the server to start responding
    log.info(
        'Waiting server up to ${(_kWaitDuration * _kWaitTimes).inSeconds} seconds');
    for (var i = 0; i < _kWaitTimes; ++i) {
      try {
        final request = await client.openUrl(
          'GET',
          Uri.http(endpoint.authority, 'meta/status'),
        );
        final response = await request.close();
        final json = jsonDecode(await response.transform(utf8.decoder).join())
            as Map<String, Object?>;
        final status = ApplicationStatus.fromJson(json);
        log.info(status.state);
        if (status.state == ApplicationState.STARTING_UP ||
            status.state == ApplicationState.CLOUD_INIT_WAIT ||
            status.state == ApplicationState.EARLY_COMMANDS) {
          await Future.delayed(_kWaitDuration);
          continue;
        }
        break;
      } on Exception catch (e) {
        if (i < _kWaitTimes - 1) {
          log.error(e);
          await Future.delayed(_kWaitDuration);
        } else {
          rethrow;
        }
      }
    }
    client.close();
  }

  Future<void> stop() async => process?.stop();
}
