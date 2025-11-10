// ignore_for_file: avoid_redundant_argument_values

import 'dart:io';

import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_client/subiquity_server.dart';
import 'package:test/test.dart';

void main() {
  late SubiquityServer testServer;
  late SubiquityClient client;

  test('wait ready', () async {
    final subiquityPath = await getSubiquityPath();
    final endpoint = await defaultEndpoint(ServerMode.DRY_RUN);
    final process = SubiquityProcess.python(
      'subiquity.cmd.server',
      serverMode: ServerMode.DRY_RUN,
      subiquityPath: subiquityPath,
    );
    testServer = SubiquityServer(
      process: process,
      endpoint: endpoint,
    );
    client = SubiquityClient();
    final socketPath = await testServer.start(
      args: [
        '--machine-config=examples/machines/simple.json',
        '--source-catalog=examples/sources/mixed.yaml',
        '--storage-version=2',
        '--bootloader=uefi',
      ],
    );
    final future = client.getStatus();
    client.open(socketPath);
    await expectLater(future, completes);
  });

  group('subiquity process', () {
    test('set additional environment before starting the process', () async {
      const foo = '42';
      final env = {'TEST_VAR': foo};
      final process = SubiquityProcess.command(
        'bash',
        ['-c', 'exit \$TEST_VAR'],
      );
      await process.start(additionalEnv: env);
      addTearDown(process.stop);
      expect(await process.exitCode, int.parse(foo));
    });

    test('call back on process start', () async {
      var cbCalled = false;
      final process = SubiquityProcess(
        'bash',
        ['-c', 'exit 0'],
        onProcessStart: () async => cbCalled = true,
      );
      await process.start();
      addTearDown(process.stop);
      expect(cbCalled, isTrue);
    });

    test('defer launch', () async {
      final fut = Future.delayed(const Duration(milliseconds: 50));
      var futAwaited = false;
      final process = SubiquityProcess(
        'bash',
        ['-c', 'exit 0'],
        deferStart: fut.then((_) => futAwaited = true),
      );
      await process.start();
      addTearDown(process.stop);
      expect(futAwaited, isTrue);
    });
  });

  group('subiquity', () {
    setUpAll(() async {
      final subiquityPath = await getSubiquityPath();
      final endpoint = await defaultEndpoint(ServerMode.DRY_RUN);
      final process = SubiquityProcess.python(
        'subiquity.cmd.server',
        serverMode: ServerMode.DRY_RUN,
        subiquityPath: subiquityPath,
      );
      testServer = SubiquityServer(
        process: process,
        endpoint: endpoint,
      );
      client = SubiquityClient();
      final socketPath = await testServer.start(
        args: [
          '--machine-config=examples/machines/simple.json',
          '--source-catalog=examples/sources/mixed.yaml',
          '--storage-version=2',
          '--bootloader=uefi',
        ],
      );
      client.open(socketPath);
    });

    tearDownAll(() async {
      await client.close();
      await testServer.stop();
    });

    test('no interactive sections', () async {
      expect(await client.getInteractiveSections(), isNull);
    });

    test('variant', () async {
      await client.setVariant(Variant.SERVER);
      expect(await client.getVariant(), equals(Variant.SERVER));

      await client.setVariant(Variant.DESKTOP);
      expect(await client.getVariant(), equals(Variant.DESKTOP));
    });

    test('source', () async {
      await client.setVariant(Variant.DESKTOP);

      final sources = await client.getSource().then((s) => s.sources);
      expect(
        sources,
        containsAll([
          isA<SourceSelection>()
              .having((s) => s.id, 'id', 'ubuntu-server')
              .having(
                (s) => s.variant,
                'variant',
                Variant.SERVER.toVariantString(),
              ),
          isA<SourceSelection>()
              .having((s) => s.id, 'id', 'ubuntu-desktop')
              .having(
                (s) => s.variant,
                'variant',
                Variant.DESKTOP.toVariantString(),
              )
              .having((s) => s.isDefault, 'default', isTrue),
        ]),
      );

      await client.setSource('ubuntu-desktop');
      final source = await client.getSource();
      expect(source.currentId, 'ubuntu-desktop');
    });

    test('locale', () async {
      await client.setLocale('en_US.UTF-8');
      expect(await client.getLocale(), 'en_US.UTF-8');
    });

    test('keyboard', () async {
      const ks = KeyboardSetting(
        layout: 'us',
        variant: '',
        toggle: null,
      );

      await client.setKeyboard(ks);

      final kb = await client.getKeyboard();
      expect(kb.setting.layout, 'us');
      expect(kb.setting.variant, '');
      expect(kb.setting.toggle, null);
      expect(kb.layouts, isNotEmpty);
    });

    test('input source', () async {
      const ks = KeyboardSetting(layout: 'fr', variant: 'latin9');
      await expectLater(client.setInputSource(ks), completes);
      await expectLater(client.setInputSource(ks, user: 'flavor'), completes);
    });

    test('has rst', () async {
      final rst = await client.hasRst();
      expect(rst, isFalse);
    });

    test('has bitlocker', () async {
      final bitLocker = await client.hasBitLocker();
      expect(bitLocker, isFalse);
    });

    test('guided storage v2', () async {
      final guided = await client.getGuidedStorageV2();
      expect(guided.targets, isNotEmpty);

      final target =
          guided.targets.whereType<GuidedStorageTargetReformat>().last;

      final choice = GuidedChoiceV2(
        target: target,
        capability: target.allowed.first,
        sizingPolicy: null,
      );
      final response = await client.setGuidedStorageV2(choice);
      expect(response.configured, isNotNull);
      expect(response.targets, isNotEmpty);
    });

    test('get storage v2', () async {
      final response = await client.getStorageV2();
      expect(response.disks, isNotNull);
      expect(response.disks, isNotEmpty);
    });

    test('get original storage v2', () async {
      final response = await client.getOriginalStorageV2();
      expect(response.disks, isNotNull);
      expect(response.disks, isNotEmpty);
    });

    test('set storage v2', () async {
      final response = await client.setStorageV2();
      expect(response.disks, isNotNull);
      expect(response.disks, isNotEmpty);
    });

    test('reset storage v2', () async {
      final response = await client.resetStorageV2();
      expect(response.disks, isNotNull);
      expect(response.disks, isNotEmpty);
    });

    test('add/edit/delete partition v2', () async {
      final disks = await client.resetStorageV2().then((r) => r.disks);
      expect(disks, isNotNull);
      expect(disks, isNotEmpty);

      expect(disks.first.partitions.whereType<Gap>(), hasLength(1));

      // add
      var response = await client.addPartitionV2(
        disks.first,
        disks.first.partitions.whereType<Gap>().single,
        const Partition(mount: '/foo', format: 'ext2'),
      );
      expect(response.disks, isNotNull);
      expect(response.disks, hasLength(disks.length));

      final added = response.disks.last.partitions.whereType<Partition>();
      expect(added, isNotEmpty);

      expect(added.last.mount, equals('/foo'));
      expect(added.last.format, equals('ext2'));

      // edit
      response = await client.editPartitionV2(
        disks.first,
        added.last.copyWith(mount: '/bar', format: 'ext3'),
      );
      expect(response.disks, isNotNull);
      expect(response.disks, hasLength(disks.length));

      final edited = response.disks.last.partitions.whereType<Partition>();
      expect(edited, hasLength(added.length));

      expect(edited.last.mount, equals('/bar'));
      expect(edited.last.format, equals('ext3'));

      // delete
      response = await client.deletePartitionV2(
        disks.first,
        edited.last,
      );
      expect(response.disks, isNotNull);
      expect(response.disks, hasLength(disks.length));

      final deleted = response.disks.last.partitions.whereType<Partition>();
      expect(deleted, hasLength(added.length - 1));
    });

    test('add swap', () async {
      final disks = await client.resetStorageV2().then((r) => r.disks);
      expect(disks, isNotNull);
      expect(disks, isNotEmpty);

      expect(disks.first.partitions.whereType<Gap>(), hasLength(1));

      // add
      final response = await client.addPartitionV2(
        disks.first,
        disks.first.partitions.whereType<Gap>().single,
        const Partition(format: 'swap'),
      );
      expect(response.disks, isNotNull);
      expect(response.disks, hasLength(disks.length));

      final added = response.disks.last.partitions.whereType<Partition>();
      expect(added, isNotEmpty);

      expect(added.last.mount, anyOf(isNull, isEmpty));
      expect(added.last.format, equals('swap'));
    });

    test('add boot partition v2', () async {
      final disks = await client.resetStorageV2().then((r) => r.disks);
      expect(disks, isNotNull);
      expect(disks, isNotEmpty);

      final response = await client.addBootPartitionV2(disks.first);
      expect(response.disks, isNotNull);
      expect(response.disks, hasLength(disks.length));

      final partitions = response.disks.first.partitions.whereType<Partition>();
      expect(partitions, isNotEmpty);

      expect(partitions.last.grubDevice, isNotNull);
      expect(partitions.last.grubDevice, isTrue);
    });

    test('reformat disk v2', () async {
      final disks = await client.resetStorageV2().then((r) => r.disks);
      expect(disks, isNotNull);
      expect(disks, isNotEmpty);

      expect(disks.first.partitions.whereType<Gap>(), hasLength(1));
      expect(disks.first.partitions.whereType<Partition>(), isEmpty);

      var response = await client.addPartitionV2(
        disks.first,
        disks.first.partitions.whereType<Gap>().single,
        const Partition(mount: '/foo', format: 'ext2'),
      );
      expect(response.disks, isNotNull);
      expect(response.disks, hasLength(disks.length));

      expect(response.disks.first.partitions, isNotEmpty);

      response = await client.reformatDiskV2(disks.first);

      expect(response.disks, isNotNull);
      expect(response.disks, hasLength(disks.length));

      final partitions = response.disks.first.partitions.whereType<Partition>();
      expect(partitions, isEmpty);
    });

    test('gap', () async {
      final storage = await client.getStorageV2();
      expect(storage.disks, isNotEmpty);

      final gaps = storage.disks.first.partitions.whereType<Gap>();
      expect(gaps, hasLength(1));

      expect(gaps.single.offset, isNonZero);
      expect(gaps.single.size, isNonZero);
    });

    test('needs root/boot', () async {
      final response = await client.getStorageV2();
      expect(response.needRoot, isNotNull);
      expect(response.needBoot, isNotNull);
    });

    test('proxy', () async {
      await client.setProxy('test');
      expect(await client.getProxy(), 'test');
      await client.setProxy('');
      expect(await client.getProxy(), '');
    });

    test('mirror', () async {
      expect(
        await client.setMirror(const MirrorPost(elected: 'test')),
        MirrorPostResponse.OK,
      );
      final test = await client.getMirror();
      expect(test.elected, endsWith('test'));
      expect(test.candidates, isNotEmpty);
      expect(test.staged, isNull);

      expect(
        await client.setMirror(
          const MirrorPost(elected: 'https://archive.ubuntu.com/ubuntu'),
        ),
        MirrorPostResponse.OK,
      );
      final archive = await client.getMirror();
      expect(archive.elected, 'https://archive.ubuntu.com/ubuntu');
      expect(archive.candidates, isNotEmpty);
      expect(archive.staged, isNull);
    });

    test('identity', () async {
      var newId = const IdentityData(
        realname: 'übuntù', // utf-8
        username: 'ubuntu',
        cryptedPassword:
            r'$6$exDY1mhS4KUYCE/2$zmn9ToZwTKLhCw.b4/b.ZRTIZM30JZ4QrOQ2aOXJ8yk96xpcCof0kxKwuX1kqLG/ygbJ1f8wxED22bTL4F46P0',
        hostname: 'ubuntu-desktop',
      );

      await client.setIdentity(newId);

      final id = await client.getIdentity();
      expect(id.realname, 'übuntù');
      expect(id.username, 'ubuntu');
      expect(id.cryptedPassword, '');
      expect(id.hostname, 'ubuntu-desktop');

      // empty defaults for null values
      newId = const IdentityData();

      // Server now throws exception if invalid username is POST'ed.
      expect(
        () async {
          await client.setIdentity(newId);
        },
        throwsException,
      );
    });

    test('identity/validate_username', () async {
      const valid = 'ubuntu';
      const alreadyUsed = 'root';
      const systemReserved = 'plugdev';
      final tooLong = 'u' * 33;
      const invalidChars = '123root';

      var validation = await client.validateUsername(valid);
      expect(validation, UsernameValidation.OK);

      validation = await client.validateUsername(alreadyUsed);
      expect(validation, UsernameValidation.ALREADY_IN_USE);

      validation = await client.validateUsername(systemReserved);
      expect(validation, UsernameValidation.SYSTEM_RESERVED);

      validation = await client.validateUsername(tooLong);
      expect(validation, UsernameValidation.TOO_LONG);

      validation = await client.validateUsername(invalidChars);
      expect(validation, UsernameValidation.INVALID_CHARS);
    });

    test('timezone', () async {
      await client.setTimezone('Pacific/Guam');
      var tzdata = await client.getTimezone();
      expect(tzdata.timezone, 'Pacific/Guam');
      expect(tzdata.fromGeoip, isFalse);

      await client.setTimezone('geoip');
      tzdata = await client.getTimezone();
      expect(tzdata.timezone, isNotNull);
      expect(tzdata.fromGeoip, isTrue);
    });

    test('status', () async {
      var status = await client.getStatus();
      expect(status.state, ApplicationState.WAITING);
      expect(status.confirmingTty, '');
      expect(status.cloudInitOk, true);
      expect(status.interactive, true);
      expect(status.echoSyslogId, startsWith('subiquity_echo.'));
      expect(status.logSyslogId, startsWith('subiquity_log.'));
      expect(status.eventSyslogId, startsWith('subiquity_event.'));

      // Should not block as the status is currently WAITING
      status = await client.getStatus(current: ApplicationState.RUNNING);
    });

    test('markConfigured', () async {
      await client.markConfigured(['keyboard']);
    });

    test('confirm', () async {
      await client.confirm('1');
    });

    test('keyboard detection steps', () async {
      // This test is trying to avoid making too many assumptions on the test
      // data, but a few steps are assumed to be of certain types to be able to
      // test all three step types.

      // assumes that step 0 is a key press step
      final step0 = await client.getKeyboardStep();
      expect(step0, isA<StepPressKey>());
      final stepPressKey = step0 as StepPressKey;
      expect(stepPressKey.symbols, isNotEmpty);
      expect(stepPressKey.keycodes, isNotEmpty);

      // assumes that step 2 is a result step
      final step2 = await client.getKeyboardStep('2');
      expect(step2, isA<StepResult>());
      final stepResult = step2 as StepResult;
      expect(stepResult.layout, isNotEmpty);
      expect(stepResult.variant, isNotEmpty);

      // assumes that step 3 is a result step
      final step3 = await client.getKeyboardStep('3');
      expect(step3, isA<StepKeyPresent>());
      final stepKeyPresent = step3 as StepKeyPresent;
      expect(stepKeyPresent.symbol, isNotEmpty);
      expect(stepKeyPresent.yes, isNotEmpty);
      expect(stepKeyPresent.no, isNotEmpty);
    });

    test('has network', () async {
      expect(client.hasNetwork(), completes);
    });

    test('drivers', () async {
      await client.setDrivers(install: true);
      final response1 = await client.getDrivers();
      expect(response1.install, isTrue);

      await client.setDrivers(install: false);
      final response2 = await client.getDrivers();
      expect(response2.install, isFalse);
    });

    test('codecs', () async {
      await client.setCodecs(install: true);
      final response1 = await client.getCodecs();
      expect(response1.install, isTrue);

      await client.setCodecs(install: false);
      final response2 = await client.getCodecs();
      expect(response2.install, isFalse);
    });

    test('refresh', () async {
      final status = await client.checkRefresh(wait: true);
      expect(status.availability, isNot(RefreshCheckState.UNKNOWN));

      final id = await client.startRefresh();
      expect(id, isNotEmpty);

      final change = await client.getRefreshProgress(id);
      expect(change.status, isNot(TaskStatus.ERROR));
      expect(change.tasks, isNotEmpty);
      expect(change.ready, isFalse);
      expect(change.err, isNull);
    });

    test('AD support', () async {
      expect(await client.hasActiveDirectorySupport(), anyOf(isTrue, isFalse));
    });

    test('AD info', () async {
      const info = AdConnectionInfo(
        domainName: 'foo.bar.baz',
        adminName: 'admin',
        password: 'password',
      );
      await client.setActiveDirectory(info);
      expect(await client.getActiveDirectory(), info);
    });

    test('AD domain', () async {
      expect(
        await client.checkActiveDirectoryDomainName(''),
        [AdDomainNameValidation.EMPTY],
      );
      expect(
        await client.checkActiveDirectoryDomainName('!"#¤%&/(=)'),
        [AdDomainNameValidation.INVALID_CHARS],
      );
      expect(
        await client.checkActiveDirectoryDomainName('foo.bar.baz'),
        [AdDomainNameValidation.OK],
      );
    });

    test('AD ping domain controller', () async {
      expect(
        await client.pingActiveDirectoryDomainController(''),
        AdDomainNameValidation.EMPTY,
      );
      expect(
        await client.pingActiveDirectoryDomainController('realm-not-found'),
        AdDomainNameValidation.REALM_NOT_FOUND,
      );
      expect(
        await client.pingActiveDirectoryDomainController('ubuntu.com'),
        AdDomainNameValidation.OK,
      );
    });

    test('AD admin', () async {
      expect(
        await client.checkActiveDirectoryAdminName(''),
        AdAdminNameValidation.EMPTY,
      );
      expect(
        await client.checkActiveDirectoryAdminName('!"#¤%&/(=)'),
        AdAdminNameValidation.INVALID_CHARS,
      );
      expect(
        await client.checkActiveDirectoryAdminName('foo.bar.baz'),
        AdAdminNameValidation.OK,
      );
    });

    test('AD password', () async {
      expect(
        await client.checkActiveDirectoryPassword(''),
        AdPasswordValidation.EMPTY,
      );
      expect(
        await client.checkActiveDirectoryPassword('!"#¤%&/(=)'),
        AdPasswordValidation.OK,
      );
    });

    test('AD join result', () async {
      // this is only testing that the endpoint answers as expected. the actual
      // join is called from the install controller and not tested here.
      expect(
        await client.getActiveDirectoryJoinResult(wait: false),
        AdJoinResult.UNKNOWN,
      );
    });

    test('restart', () async {
      expect(client.restart, returnsNormally);
    });
  });

  group('autoinstall', () {
    setUpAll(() async {
      final subiquityPath = await getSubiquityPath();
      final endpoint = await defaultEndpoint(ServerMode.DRY_RUN);
      final process = SubiquityProcess.python(
        'subiquity.cmd.server',
        serverMode: ServerMode.DRY_RUN,
        subiquityPath: subiquityPath,
      );
      testServer = SubiquityServer(
        process: process,
        endpoint: endpoint,
      );
      client = SubiquityClient();
      final socketPath = await testServer.start(
        args: [
          '--autoinstall=examples/autoinstall/interactive.yaml',
          '--machine-config=examples/machines/simple.json',
        ],
      );
      client.open(socketPath);
    });

    tearDownAll(() async {
      await client.close();
      await testServer.stop();

      final subiquityPath = await getSubiquityPath();
      await Directory('$subiquityPath/.subiquity').delete(recursive: true);
    });

    test('interactive network section', () async {
      expect(await client.getInteractiveSections(), ['network']);
    });
  });

  group('tpm fde', () {
    setUpAll(() async {
      final subiquityPath = await getSubiquityPath();
      final endpoint = await defaultEndpoint(ServerMode.DRY_RUN);
      final process = SubiquityProcess.python(
        'subiquity.cmd.server',
        serverMode: ServerMode.DRY_RUN,
        subiquityPath: subiquityPath,
        environment: {'SUBIQUITY_REPLAY_TIMESCALE': '100'},
      );
      testServer = SubiquityServer(
        process: process,
        endpoint: endpoint,
      );
      client = SubiquityClient();
      final socketPath = await testServer.start(
        args: [
          '--machine-config=examples/machines/simple.json',
          '--source-catalog=examples/sources/desktop.yaml',
          '--dry-run-config=examples/dry-run-configs/tpm.yaml',
          '--storage-version=2',
          '--bootloader=uefi',
        ],
      );
      client.open(socketPath);

      await client.setVariant(Variant.DESKTOP);
      await client.setSource('ubuntu-desktop');
      await client.markConfigured([
        'locale',
        'keyboard',
        'mirror',
        'proxy',
        'ssh',
        'snaplist',
        'identity',
        'timezone',
        'drivers',
        'codecs',
        'snaplist',
        'network',
        'ubuntu_pro',
      ]);
    });

    tearDownAll(() async {
      await client.close();
      await testServer.stop();
    });

    test('set storage', () async {
      final guided = await client.getGuidedStorageV2();
      final target =
          guided.targets.whereType<GuidedStorageTargetReformat>().last;
      final choice = GuidedChoiceV2(
        target: target,
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        sizingPolicy: null,
      );
      await client.setGuidedStorageV2(choice);
      await client.setStorageV2();
    });

    test('entropy checks', () async {
      expect(
        await client.calculateEntropyV2(passphrase: 'foobar'),
        isA<EntropyResponse>(),
      );
      expect(
        await client.calculateEntropyV2(pin: '12345'),
        isA<EntropyResponse>(),
      );
    });

    test('finish installation', () async {
      await client.monitorStatus().firstWhere(
            (status) => status?.state == ApplicationState.NEEDS_CONFIRMATION,
          );
      await client.confirm('/dev/tty1');
      await client
          .monitorStatus()
          .firstWhere((status) => status?.state == ApplicationState.DONE);
    });

    test('get core boot recovery key v2', () async {
      final response = await client.getCoreBootRecoveryKeyV2();
      expect(response, isNotEmpty);
    });

    test('get core boot encryption features v2', () async {
      final response = await client.getCoreBootEncryptionFeaturesV2();
      expect(response, isList);
    });
  });
}
