// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class UbuntuInitLocalizationsKo extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get welcomePageTitle => '환영합니다';

  @override
  String welcomePageHeader(String distro) {
    return '$distro에 오신 것을 환영합니다';
  }

  @override
  String get welcomeWhatsNew => '변경 사항';

  @override
  String get welcomeStartTitle => '간소화된 설치';

  @override
  String get welcomeStartSubtitle => '더욱 깔끔한 설치 경험을 제공합니다.';

  @override
  String get welcomeStoreTitle => '새단장한 앱 스토어';

  @override
  String get welcomeStoreSubtitle => '좋아하는 소프트웨어를 찾기가 더욱 쉬워졌습니다.';

  @override
  String get welcomeSecurityTitle => '향상된 보안';

  @override
  String get welcomeSecuritySubtitle => '하드웨어 / ZFS 암호화에 대한 새로운 옵션을 제공합니다.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">변경 기록 확인</a>';
  }

  @override
  String get telemetryPageTitle => '원격 모니터링';

  @override
  String telemetryHeader(String distro) {
    return '$distro 개선에 기여하기';
  }

  @override
  String telemetryDescription(String distro) {
    return '$distro를 개선하는 데 도움이 되도록 귀하의 시스템 데이터를 저희와 공유해 주세요. 여기에는 귀하의 장치 모델, 설치된 소프트웨어, 시간대와 같은 정보가 포함됩니다.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return '네, $distro 팀에 시스템 데이터를 제공합니다';
  }

  @override
  String get telemetryLabelOff => '아니오, 시스템 데이터를 제공하지 않습니다';

  @override
  String get telemetryReportLabel => '첫 번째 리포트 보기';

  @override
  String get telemetryReportTitle => '자세한 리포트 내용';

  @override
  String get telemetryLegalLabel => '법률 정보';

  @override
  String get telemetryCollectError => '원격 모니터링 데이터 수집 실패';

  @override
  String get privacyPageTitle => '위치 서비스';

  @override
  String get privacyLocationTitle => '위치 서비스를 활성화할까요?';

  @override
  String get privacyLocationSubtitle =>
      '애플리케이션이 사용자의 위치를 알 수 있도록 합니다.\n언제든지 시스템 설정에서 변경할 수 있습니다.';

  @override
  String get privacyLocationEnable => '위치 서비스';

  @override
  String get privacyPolicyLink => '데이터 프라이버시';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return '이 코드로 <a href=\"https://$url\">$url</a>에서 간편하게 등록 가능';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => '이 장치 등록하기';

  @override
  String get ubuntuProOrAddTokenManually => '또는 수동으로 토큰 추가하기';

  @override
  String get ubuntuProTokenTextfieldHint => '토큰';

  @override
  String get ubuntuProSubscriptionDescription =>
      '오픈소스 소프트웨어 보안을 위한 가장 믿음직한 구독을 신청하세요';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return '개인 사용자에게 항상 무료. 기업 고객에게 30일 무료 체험 제공. <a href=\"https://$url\">더 알아보기</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => '등록';

  @override
  String get ubuntuProTokenAttachError => '올바르지 않은 토큰';

  @override
  String get ubuntuProTokenAttachSucess => '유효한 토큰';

  @override
  String get ubuntuProTokenAttachErrorVariant => '유효하지 않은 토큰, 다시 시도';

  @override
  String get ubuntuProOnBoardingSkipForNow => '지금은 건너뛰기';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      '나중에 소프트웨어 및 업데이트 애플리케이션에서 언제든지 Ubuntu Pro를 활성화할 수 있습니다.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Ubuntu Pro 활성화';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      '2032년까지 더 다양한 패키지에 대한 보안 업데이트를 받으려면 Ubuntu Pro 구독에 이 컴퓨터를 연결하세요.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro가 이 기기에서 활성화되어 있습니다';

  @override
  String get ubuntuProSucessAttachDescription =>
      '소프트웨어 및 업데이트 애플리케이션에서 Ubuntu Pro 서비스를 관리할 수 있습니다.';
}
