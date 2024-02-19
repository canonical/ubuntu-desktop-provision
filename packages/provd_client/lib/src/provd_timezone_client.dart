import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:provd_client/src/generated/google/protobuf/empty.pb.dart';
import 'package:provd_client/src/generated/timezone.pbgrpc.dart';

class ProvdTimezoneClient {
  ProvdTimezoneClient(Object host, int port)
      : _timezoneClient = TimezoneServiceClient(
          ClientChannel(
            host,
            port: port,
            options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
            ),
          ),
        );

  @visibleForTesting
  ProvdTimezoneClient.withClient(this._timezoneClient);

  final TimezoneServiceClient _timezoneClient;

  /// Sets the timezone to [timezone].
  Future<void> setTimezone(String timezone) async {
    final request = SetTimezoneRequest(timezone: timezone);
    await _timezoneClient.setTimezone(request);
  }

  /// Returns the current timezone.
  Future<String> getTimezone() async {
    final response = await _timezoneClient.getTimezone(Empty());
    return response.timezone;
  }
}
