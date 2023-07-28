import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_provision/services.dart';

void main() {
  test('broadcast stream', () {
    final service = JournalService();
    expect(service.start([]).isBroadcast, isTrue);
  });
}
