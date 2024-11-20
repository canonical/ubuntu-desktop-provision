import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class FactoryResetToolsLocalizationsKo extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '공장 초기화 도구';

  @override
  String get windowTitle => '공장 초기화 도구';

  @override
  String get homeTitle => '무엇을 하시겠습니까?';

  @override
  String get createResetMedia => '재설치 미디어 만들기';

  @override
  String get startFactoryReset => '공장 초기화 시작';

  @override
  String get createUsbTitle => 'USB 재설치 미디어 만들기';

  @override
  String get createUsbBody => 'Ubuntu 설치를 사용자 정의하거나 시스템 복원을 위해 USB 재설정 미디어를 만듭니다.';

  @override
  String get createUsbListExplanation => 'USB 이동식 드라이브를 선택해 주십시오. 드라이브에는 **최소 16GB의 공간**이 있어야 합니다.';

  @override
  String get createUsbWarning => '이동식 드라이브가 포맷되며 드라이브의 모든 데이터는 삭제됩니다.';

  @override
  String get resetMediaTitle => 'USB 재설치 미디어';

  @override
  String get noMediaDetected => '이동식 저장소가 인식되지 않음';

  @override
  String get noMediaDetectedSubtitle => '공장 초기화 미디어를 만들려면 USB 저장소를 연결해야 합니다.';

  @override
  String get factoryResetTitle => '공장 초기화 옵션 선택';

  @override
  String get loadingDrives => '드라이브 목록을 불러오는 동안 기다려 주십시오.';

  @override
  String get resetMediaReadyTitle => 'USB 재설치 미디어가 준비되었습니다';

  @override
  String get resetMediaReadyBody => 'When you want to use it, please insert the USB drive into the computer you want to reset and restart it.';

  @override
  String get errorLoadingDrives => 'An error occurred while fetching the drives.';

  @override
  String get resetMediaInitializing => 'Initializing';

  @override
  String get resetMediaCopying => 'Copying';

  @override
  String get resetMediaFinalizing => 'Finalizing';

  @override
  String get resetMediaFinished => 'Finished';

  @override
  String get resetMediaFailed => 'Failed';

  @override
  String get error => 'Error';

  @override
  String get loading => 'Loading...';

  @override
  String get warning => 'Warning';

  @override
  String get restore => 'Restore';

  @override
  String get restart => 'Restart';

  @override
  String get reformat => 'Reformat';

  @override
  String get failed => 'Failed to run command';

  @override
  String get close => '닫기';

  @override
  String get ok => 'OK';
}
