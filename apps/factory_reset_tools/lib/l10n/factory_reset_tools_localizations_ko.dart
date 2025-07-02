// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
  String get createUsbBody =>
      'Ubuntu 설치를 사용자 정의하거나 시스템 복원을 위해 USB 재설정 미디어를 만듭니다.';

  @override
  String get createUsbListExplanation =>
      'USB 이동식 드라이브를 선택해 주십시오. 드라이브에는 **최소 16GB의 공간**이 있어야 합니다';

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
  String get resetMediaReadyBody =>
      '재설정 도구를 사용하려면 재설정하려는 컴퓨터에 USB 드라이브를 삽입하고 다시 시작하십시오.';

  @override
  String get errorLoadingDrives => '드라이브 목록을 불러오는 중 오류가 발생했습니다.';

  @override
  String get resetMediaInitializing => '시작 중';

  @override
  String get resetMediaCopying => '복사 중';

  @override
  String get resetMediaFinalizing => '완료 중';

  @override
  String get resetMediaFinished => '완료됨';

  @override
  String get resetMediaFailed => '실패';

  @override
  String get error => '오류';

  @override
  String get loading => '불러오는 중...';

  @override
  String get warning => '경고';

  @override
  String get restore => '복원';

  @override
  String get restart => '다시 시작';

  @override
  String get reformat => '포맷';

  @override
  String get failed => '명령 실행 실패';

  @override
  String get close => '닫기';

  @override
  String get ok => '확인';
}
