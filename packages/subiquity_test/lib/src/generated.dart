import 'package:mockito/annotations.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_client/subiquity_server.dart';

@GenerateMocks([
  SubiquityClient,
  SubiquityServer,
  SubiquityStatusMonitor,
])
export 'generated.mocks.dart';
