import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/services/refresh_service.dart';

void main() {
  const changeId = 'foo';
  const notReady = Change(
    id: changeId,
    kind: 'kind',
    summary: 'summary',
    status: TaskStatus.DOING,
    tasks: [],
    ready: false,
  );
  final ready = notReady.copyWith(ready: true);
  final error = Exception('err');

  test('check', () async {
    final client = MockSubiquityClient();
    final service = RefreshService(client);
    expect(service.state, equals(const RefreshState.checking()));

    const available = RefreshStatus(availability: RefreshCheckState.AVAILABLE);
    when(client.checkRefresh()).thenAnswer((_) async => available);
    expect(await service.check(), equals(const RefreshState.status(available)));
    verify(client.checkRefresh()).called(1);

    const unavailable =
        RefreshStatus(availability: RefreshCheckState.UNAVAILABLE);
    when(client.checkRefresh()).thenAnswer((_) async => unavailable);
    expect(
        await service.check(), equals(const RefreshState.status(unavailable)));
    verify(client.checkRefresh()).called(1);

    final error = Exception('err');
    when(client.checkRefresh()).thenThrow(error);
    expect(await service.check(), equals(RefreshState.error(error)));
    verify(client.checkRefresh()).called(1);
  });

  group('refresh', () {
    test('ready', () async {
      final client = MockSubiquityClient();
      when(client.startRefresh()).thenAnswer((_) async => changeId);
      when(client.getRefreshProgress(changeId)).thenAnswer(
        (_) async {
          when(client.getRefreshProgress(changeId))
              .thenAnswer((_) async => ready);
          return notReady;
        },
      );

      final service = RefreshService(client);
      expect(
        service.stateChanged,
        emitsInOrder([
          const RefreshState.progress(notReady),
          RefreshState.progress(ready),
          const RefreshState.done(),
        ]),
      );
      await service.refresh();
      expect(service.state, equals(const RefreshState.done()));
    });

    test('error', () async {
      final client = MockSubiquityClient();
      when(client.startRefresh()).thenAnswer((_) async => changeId);
      when(client.getRefreshProgress(changeId)).thenAnswer(
        (_) async {
          when(client.getRefreshProgress(changeId)).thenThrow(error);
          return notReady;
        },
      );

      final service = RefreshService(client);
      expect(
        service.stateChanged,
        emitsInOrder([
          const RefreshState.progress(notReady),
          const RefreshState.done(),
        ]),
      );
      await service.refresh();
      expect(service.state, equals(const RefreshState.done()));
    });
  });

  test('close', () async {
    final client = MockSubiquityClient();
    final service = RefreshService(client);
    expect(service.stateChanged, emitsDone);
    await service.close();
  });
}
