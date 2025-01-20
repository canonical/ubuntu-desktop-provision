import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class UbuntuBootstrapLocalizationsKo extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => '우분투 데스크톱 인스톨러';

  @override
  String windowTitle(String RELEASE) {
    return '$RELEASE 설치';
  }

  @override
  String get autoinstallDirectTitle => 'Automated installation';

  @override
  String get autoinstallDirectHeader => 'Import autoinstall file';

  @override
  String get autoinstallDirectUrlLabel => 'You can enter the URL of an autoinstall file:';

  @override
  String get autoinstallDirectFileLabel => 'Or select a local file:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Select file...';

  @override
  String get autoinstallDirectFilePickerTitle => 'Choose file';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML files';

  @override
  String get autoinstallDirectImportButtonLabel => 'Import';

  @override
  String get autoinstallTitle => '설치 유형';

  @override
  String autoinstallHeader(String DISTRO) {
    return '$DISTRO를 어떻게 설치하시겠습니까?';
  }

  @override
  String get autoinstallInstructions => 'autoinstall.yaml URL이나 로컬 파일 경로를 입력하세요:';

  @override
  String get autoinstallInteractiveOption => '대화형 설치';

  @override
  String get autoinstallInteractiveDescription => '설치 과정을 단계별로 안내받고 싶은 사용자를 위한 옵션입니다.';

  @override
  String get autoinstallAutomatedOption => '자동 설치';

  @override
  String get autoinstallAutomatedDescription => '여러 차례의 일관된 시스템 설정을 위해 autoinstall.yaml을 사용하는 고급 사용자를 위한 기능입니다.';

  @override
  String get changeButtonText => '바꾸기';

  @override
  String get quitButtonText => '인스톨러 닫기';

  @override
  String loadingPageTitle(String DISTRO) {
    return '$DISTRO 사용을 환영합니다';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '$DISTRO 준비 중…';
  }

  @override
  String get warningLabel => '경고:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return '$DISTRO 체험 또는 설치';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return '$DISTRO로 무엇을 하고 싶으신가요?';
  }

  @override
  String get tryOrInstallRepairOption => '설치 복구';

  @override
  String get tryOrInstallRepairDescription => '복구하면 문서나 설정을 건드리지 않고 설치된 모든 소프트웨어가 다시 설치됩니다.';

  @override
  String tryOption(String RELEASE) {
    return '$RELEASE 체험하기';
  }

  @override
  String tryDescription(String RELEASE) {
    return '컴퓨터에 변경 사항을 만들지 않고 $RELEASE를 체험하실 수 있습니다.';
  }

  @override
  String installOption(String RELEASE) {
    return '$RELEASE 설치';
  }

  @override
  String installDescription(String RELEASE) {
    return '$RELEASE를 현재 운영체제와 함께 (또는 대신) 설치합니다. 오래 걸리지 않습니다.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return '<a href=\"$url\">릴리즈 노트</a>를 읽어보십시오.';
  }

  @override
  String get rstTitle => 'RST가 활성화됨';

  @override
  String get rstHeader => '계속하려면 RST를 끄십시오';

  @override
  String rstDescription(String DISTRO) {
    return '이 컴퓨터는 Intel RST (Rapid Storage Technology)를 사용합니다. $DISTRO를 설치하기 전에 Windows 에서 RST를 비활성화해야 합니다.';
  }

  @override
  String rstInstructions(String url) {
    return '절차를 알아보려면, 다른 장치로 QR코드를 스캔 하거나 이 페이지를 방문하십시오: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Secure Boot 구성';

  @override
  String get configureSecureBootDescription => '서드파티 드라이버 소프트웨어 설치를 선택하시려면, Secure Boot를 꺼야 합니다.\n이를 위해 지금 보안 키를 지정하고, 시스템 다시 시작 시 입력해야 합니다.';

  @override
  String get configureSecureBootOption => 'Secure Boot 구성';

  @override
  String get chooseSecurityKey => '보안 키 선택';

  @override
  String get confirmSecurityKey => '보안 키 확인';

  @override
  String get dontInstallDriverSoftwareNow => '지금은 드라이버 소프트웨어 설치하지 않기';

  @override
  String get dontInstallDriverSoftwareNowDescription => '소프트웨어 & 업데이트에서 나중에 설치하실 수 있습니다.';

  @override
  String get configureSecureBootSecurityKeyRequired => '보안 키가 필요합니다';

  @override
  String get secureBootSecurityKeysDontMatch => '보안 키가 일치하지 않습니다';

  @override
  String get showSecurityKey => '보이기';

  @override
  String get hideSecurityKey => '숨기기';

  @override
  String get updatesOtherSoftwarePageTitle => '애플리케이션';

  @override
  String get updatesOtherSoftwarePageDescription => '어떤 앱을 설치하고 시작하시겠습니까?';

  @override
  String get codecsAndDriversPageTitle => '컴퓨터 최적화하기';

  @override
  String get codecsAndDriversPageDescription => '권장되는 독점 소프트웨어를 설치하시겠습니까?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO는 기본적으로는 아무런 독점 소프트웨어 없이 제공됩니다. 추가적인 독점 소프트웨어를 설치하면 컴퓨터의 성능을 향상시킬 수 있습니다.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA 그래픽 카드 인식됨';

  @override
  String get codecsAndDriversNvidiaBody => 'NVIDIA 그래픽 카드의 최고의 성능을 발휘하기 위해 가급적이면 추가 드라이버를 설치하는 것이 권장됩니다.';

  @override
  String get fullInstallationTitle => '더 많은 소프트웨어';

  @override
  String get fullInstallationSubtitle => '오프라인 오피스 툴과 유틸리티, 웹 브라우저.';

  @override
  String get minimalInstallationTitle => '기본 설치';

  @override
  String get minimalInstallationSubtitle => '웹 브라우저와 기본 유틸리티 등 필수적인 요소만 설치합니다.';

  @override
  String get otherOptions => '기타 설정';

  @override
  String get installThirdPartyTitle => '그래픽 및 Wi-Fi 하드웨어를 위한 서드파티 소프트웨어와, 부가적인 미디어 포맷 설치';

  @override
  String get installThirdPartySubtitle => '이 소프트웨어는 문서에 포함된 라이선스 조건의 적용을 받습니다. 일부는 독점입니다.';

  @override
  String get installDriversTitle => '그래픽과 Wi-Fi 하드웨어를 위한 서드파티 소프트웨어 설치';

  @override
  String get installDriversSubtitle => 'NVIDIA 드라이버 또는 유사한 드라이버와 이외 요소 포함';

  @override
  String get installCodecsTitle => '추가 미디어 포맷 지원을 내려받아 설치';

  @override
  String get installCodecsSubtitle => 'MP3, MP4, MOV 또는 기타 미디어 포맷 포함';

  @override
  String get batteryWarning => '컴퓨터가 전원에 연결되어 있지 않습니다.';

  @override
  String get offlineWarning => '현재 오프라인 상태입니다';

  @override
  String get choosePassphraseTitle => '디스크 암호';

  @override
  String get choosePassphraseHeader => '암호 만들기';

  @override
  String get choosePassphraseBody => '파일을 암호화하려면 암호를 설정해야 합니다. 컴퓨터를 켤 때마다 암호를 묻는 메시지가 표시됩니다.';

  @override
  String get choosePassphraseHint => '암호 선택';

  @override
  String get choosePassphraseConfirmHint => '암호 확인';

  @override
  String get choosePassphraseRequired => '암호가 필요합니다';

  @override
  String get choosePassphraseMismatch => '암호가 일치하지 않습니다';

  @override
  String get choosePassphraseInfoHeader => '암호를 안전한 곳에 저장해 두세요';

  @override
  String get choosePassphraseInfoBody => '암호를 분실하면 모든 데이터를 잃게 됩니다.';

  @override
  String get createPassphrase => '암호 만들기';

  @override
  String get confirmPassphrase => '암호 확인';

  @override
  String get installationTypeTitle => '디스크 설정';

  @override
  String installationTypeHeader(String DISTRO) {
    return '$DISTRO를 어떻게 설치하시겠습니까?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return '현재 컴퓨터에 $os(이)가 설치되어 있습니다. 어떻게 하시겠습니까?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return '현재 이 컴퓨터에 $os1 및 $os2이(가) 설치되어 있습니다. 어떻게 하시겠습니까?';
  }

  @override
  String get installationTypeMultiOSDetected => '이 컴퓨터에는 여러 운영체제가 설치되어 있습니다. 어떻게 하시겠습니까?';

  @override
  String get installationTypeNoOSDetected => '현재 이 컴퓨터에서 발견된 운영체제가 없습니다. 어떻게 하시겠습니까?';

  @override
  String installationTypeErase(String DISTRO) {
    return '디스크 지우고 $DISTRO 설치';
  }

  @override
  String get installationTypeEraseInfo => '선택된 디스크를 지우고 설치합니다.';

  @override
  String get installationTypeAdvancedLabel => '고급 기능...';

  @override
  String get installationTypeAdvancedTitle => '고급 기능';

  @override
  String get installationTypeExperimental => '고급 설정';

  @override
  String get installationTypeNone => '선택 안 함';

  @override
  String get installationTypeNoneSelected => '선택 안 함';

  @override
  String get installationTypeLVM => 'LVM 사용';

  @override
  String get installationTypeLVMSelected => 'LVM 선택됨';

  @override
  String get installationTypeLVMEncryption => 'LVM과 암호화 사용';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM 및 암호화 선택됨';

  @override
  String get installationTypeEncryptInfo => '다음 단계에서 보안 키를 선택합니다.';

  @override
  String get installationTypeZFS => '디스크 지우고 ZFS 사용';

  @override
  String get installationTypeZFSEncryption => '디스크를 지우고 ZFS와 암호화 사용';

  @override
  String get installationTypeZFSSelected => 'ZFS 선택됨';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS와 암호화 선택됨';

  @override
  String get installationTypeTPM => '하드웨어 기반 전체 디스크 암호화 설정';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '이것은 실험적인 기능이며 이 하드웨어나 향후 $DISTRO 릴리스에서 작동하지 않을 수 있습니다. 이 옵션을 선택하기 전에 <a href=\"$url\">TPM 암호화에 대해 알아보세요</a>.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM 선택됨';

  @override
  String installationTypeReinstall(String os) {
    return '$os 지우고 다시 설치';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">경고:</font> $os에 있는 모든 프로그램, 문서, 사진, 음악 및 다른 파일을 삭제합니다.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return '$product을(를) $os와 나란히 설치';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return '$product을(를) $os1및 $os2와 나란히 설치';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return '$product을(를) 나란히 설치';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return '$product을(를) 다른 파티션과 나란히 설치';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return '컴퓨터를 시작할 때 원하는 운영체제를 선택하실 수 있습니다.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Erase $os and install $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'All files and data from the existing $os installation will be permanently deleted.';
  }

  @override
  String get installationTypeManual => '수동 설치';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return '직접 디스크 설정을 원하는 고급 사용자를 위한 옵션입니다.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return '디스크 지우고 $DISTRO 설치';
  }

  @override
  String get selectGuidedStorageInfo => '선택된 디스크를 완전히 지우고 새로 시작합니다.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => '드라이브 선택:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => '파티션 선택:';

  @override
  String get selectGuidedStorageInfoLabel => '디스크 전체가 사용됩니다:';

  @override
  String get selectGuidedStorageInstallNow => '지금 설치';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return '$DISTRO를 설치할 위치를 선택하세요';
  }

  @override
  String get installAlongsideSpaceDivider => '아래 구분선을 움직여 드라이브 공간을 할당하십시오:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num개의 작은 파티션이 숨겨져 있음, <a href=\"$url\">고급 파티션 도구</a>에서 더 많은 기능을 사용하십시오';
  }

  @override
  String get installAlongsideResizePartition => '파티션 크기 조정';

  @override
  String get installAlongsideAllocateSpace => '공간 할당';

  @override
  String get installAlongsideFiles => '파일';

  @override
  String get installAlongsidePartition => '파티션:';

  @override
  String get installAlongsideSize => '크기:';

  @override
  String get installAlongsideAvailable => '이용 가능:';

  @override
  String get allocateDiskSpace => '수동 파티셔닝';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => '마운트 위치는 \"/\"로 시작해야 합니다';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => '마운트 위치는 공백을 포함할 수 없습니다';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format is not a supported filesystem for $mountpoint';
  }

  @override
  String get diskHeadersDevice => '장치';

  @override
  String get diskHeadersType => '형식';

  @override
  String get diskHeadersMountPoint => '마운트 위치';

  @override
  String get diskHeadersSize => '크기';

  @override
  String get diskHeadersUsed => '사용됨';

  @override
  String get diskHeadersSystem => '시스템';

  @override
  String get diskHeadersFormat => '포맷';

  @override
  String get freeDiskSpace => '남은 공간';

  @override
  String get newPartitionTable => '새 파티션 테이블';

  @override
  String get newPartitionTableConfirmationTitle => '새로운 빈 파티션';

  @override
  String get newPartitionTableConfirmationMessage => '장치 전체에 새 파티션을 생성하면, 기존 파티션은 모두 삭제됩니다. 필요하신 경우 작업을 되돌리실 수 있습니다.';

  @override
  String get tooManyPrimaryPartitions => '주 파티션이 너무 많음';

  @override
  String get partitionLimitReached => '한도 도달';

  @override
  String get bootLoaderDevice => '부트 로더 설치에 사용할 장치';

  @override
  String get partitionCreateTitle => '파티션 만들기';

  @override
  String get partitionEditTitle => '파티션 편집';

  @override
  String get partitionSizeLabel => '크기:';

  @override
  String get partitionTypeLabel => '새 파티션 유형:';

  @override
  String get partitionTypePrimary => '주';

  @override
  String get partitionTypeLogical => '논리';

  @override
  String get partitionLocationLabel => '새 파티션 위치:';

  @override
  String get partitionLocationBeginning => '이 공간이 시작하는 지점';

  @override
  String get partitionLocationEnd => '이 공간이 끝나는 지점';

  @override
  String get partitionFormatLabel => '용도:';

  @override
  String get partitionFormatNone => '포맷하지 않기';

  @override
  String partitionFormatKeep(String format) {
    return '$format 포맷 유지하기';
  }

  @override
  String get partitionErase => '파티션 포맷';

  @override
  String get partitionMountPointLabel => '마운트 위치:';

  @override
  String get confirmPageTitle => '설치 준비 완료';

  @override
  String get confirmHeader => '선택 사항 다시 확인하기';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => '없음';

  @override
  String get confirmDevicesTitle => '장치';

  @override
  String get confirmEntryApplications => '애플리케이션';

  @override
  String get confirmEntryDiskSetup => '디스크 설정';

  @override
  String get confirmEntryDiskEncryption => '디스크 암호화';

  @override
  String get confirmEntryInstallationDisk => '설치 디스크';

  @override
  String get confirmEntryProprietarySoftware => '독점 소프트웨어';

  @override
  String get confirmSectionGeneralTitle => '일반';

  @override
  String get confirmSectionSecurityAndMoreTitle => '보안 및 기타';

  @override
  String get confirmPartitionsTitle => '파티션';

  @override
  String get confirmPartitionTables => '다음 장치의 파티션 테이블이 변경되었습니다:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => '다음과 같은 파티션 변경사항이 적용됩니다:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return '파티션 <b>$sysname</b>의 크기를 <b>$oldsize</b>에서 <b>$newsize</b>로 조정';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return '파티션 <b>$sysname</b> 을(를) <b>$format</b>(으)로 포맷하고 <b>$mount</b>에 마운트';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return '파티션 <b>$sysname</b>을(를) <b>$format</b> (으)로 포맷함';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return '파티션 <b>$sysname</b>을(를) <b>$mount</b>에 사용';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return '파티션 <b>$sysname</b> 생성됨';
  }

  @override
  String get confirmProprietarySoftwareCodecs => '코덱';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => '코덱과 드라이버';

  @override
  String get confirmProprietarySoftwareDrivers => '드라이버';

  @override
  String get confirmInstallButton => '설치';

  @override
  String get installationCompleteTitle => '설치 완료';

  @override
  String readyToUse(String system) {
    return '$system 설치가 완료 되었으며 사용할 준비가 되었습니다';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** 이(가) 디스크로 복사되었습니다';
  }

  @override
  String restartInto(String system) {
    return '$system(으)로 다시 시작';
  }

  @override
  String get restartWarningBody => '설치를 완료하기 위해 다시 시작하거나 체험을 계속할 수 있습니다.\n모든 변경 사항은 저장되지 않습니다.';

  @override
  String get rebootToConfigureWarning => '설치 과정을 계속하려면 컴퓨터를 다시 시작해야 합니다.';

  @override
  String get shutdown => '시스템 종료';

  @override
  String get restartNow => '지금 다시 시작';

  @override
  String get continueTesting => '체험 계속하기';

  @override
  String get bitlockerTitle => 'BitLocker 활성화됨';

  @override
  String get bitlockerHeader => '계속하려면 BitLocker를 끄십시오';

  @override
  String bitlockerDescription(String option) {
    return '이 컴퓨터는 Windows BitLocker 암호화를 사용합니다.\n계속하려면 Windows를 사용하여 여유 공간을 만들거나 \'$option\'을 선택해야 합니다.';
  }

  @override
  String bitlockerInstructions(String url) {
    return '절차를 확인하려면, 다른 장치에서 QR코드를 스캔하거나 링크를 방문 하십시오: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Windows로 다시 시작';

  @override
  String get restartIntoWindowsTitle => 'Windows로 다시 시작하시겠습니까?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return '컴퓨터를 정말로 다시 시작하시겠습니까? $DISTRO 설치를 완료 하려면 나중에 $DISTRO 설치를 다시 시작 해야 합니다.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return '$RELEASE 사용을 환영합니다';
  }

  @override
  String get installationSlidesAvailable => '이용 가능:';

  @override
  String get installationSlidesIncluded => '포함됨:';

  @override
  String get installationSlidesWelcomeTitle => '빠르고, 무료이며 새로운 기능으로 가득';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return '최신 버전의 $DISTRO로 컴퓨터를 더욱 쉽게 사용할 수 있습니다.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return '개발자, 크리에이터, 게이머, 관리자 등 누구에게나 생산성을 향상하고 $RELEASE에서의 경험을 개선할 수 있는 새로운 도구를 찾으실 수 있습니다.';
  }

  @override
  String get installationSlidesSoftwareTitle => '필요한 모든 애플리케이션';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return '스냅 스토어와 $DISTRO 아카이브에 있는 수천개의 애플리케이션과, 여러분의 모든 애플리케이션을 우분투 소프트웨어에서 설치하고 관리하고, 업데이트 하십시오.';
  }

  @override
  String get installationSlidesDevelopmentTitle => '최고의 오픈소스를 활용하여 개발하기';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO 앱 또는 웹 개발, 데이터 과학 및 AI / ML뿐만 아니라 devops 및 관리를위한 이상적인 워크 스테이션입니다. 모든 $DISTRO 릴리스에는 최신 툴체인이 포함되어 있으며 모든 주요 IDE를 지원합니다.';
  }

  @override
  String get installationSlidesCreativityTitle => '창의력 향상';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return '애니메이터, 디자이너, 비디오 크리에이터 또는 게임 개발자라면 오픈 소스 및 업계 표준 소프트웨어와 애플리케이션을 지원하는 $DISTRO로 워크플로우를 쉽게 가져올 수 있습니다.';
  }

  @override
  String get installationSlidesGamingTitle => '게이밍에 최적화';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO 는 성능과 호환성을 개선하기 위해 최신 NVIDIA 및 Mesa 드라이버를 지원합니다. 수천 개의 Windows 타이틀을 추가 구성 없이도 Steam과 같은 애플리케이션을 통해 $DISTRO에서 훌륭하게 즐기실 수 있습니다.';
  }

  @override
  String get installationSlidesSecurityTitle => '개인 정보 및 보안';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO 는 온라인에서 개인 정보를 보호하고 보안을 유지하는 데 필요한 모든 도구를 제공합니다. 내장된 방화벽 및 VPN 지원과 다양한 개인 정보 보호 중심 애플리케이션을 통해 데이터를 완벽하게 제어할 수 있습니다.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return '모든 $DISTRO LTS 릴리스에는 5년의 보안 패치가 포함되어 있으며, Ubuntu Pro 구독으로 10년으로 연장됩니다.';
  }

  @override
  String get installationSlidesProductivityTitle => '생산성 향상';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO 데스크톱에는 문서, 스프레드시트 및 프레젠테이션을 위한 Microsoft Office 호환 오픈 소스 애플리케이션 제품군인 LibreOffice가 포함되어 있습니다. 인기 있는 협업 도구도 이용하실 수 있습니다.';
  }

  @override
  String get installationSlidesAccessibilityTitle => '모두에게 열린 접근';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '$DISTRO 철학의 핵심은 컴퓨팅은 모두를 위한 것이라는 믿음입니다. 고급 접근성 도구와 언어, 색상 및 텍스트 크기를 변경할 수 있는 옵션을 통해 $DISTRO는 언제 어디서나 쉽게 컴퓨팅을 할 수 있도록 지원합니다.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca 스크린 리더';

  @override
  String get installationSlidesAccessibilityLanguages => '언어 지원';

  @override
  String get installationSlidesSupportTitle => '도움 및 지원';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return '공식 $DISTRO 문서는 온라인과 독의 도움말 아이콘으로 사용할 수 있습니다.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu에는 넒은 범위의 질문과 답변이 있으며 Ubuntu Discourse 에서는 신규 사용자와 숙련된 사용자를 위한 가이드와 토론이 제공됩니다.';

  @override
  String get installationSlidesSupportEnterprise => '엔터프라이즈 사용자를 위해 Canonical에서는 직장에서 우분투를 쉽게 온보딩하고 안전하게 관리할 수 있도록 상용 지원을 제공합니다.';

  @override
  String get installationSlidesSupportResources => '유용한 지원:';

  @override
  String get installationSlidesSupportDocumentation => '공식 문서';

  @override
  String get installationSlidesSupportUbuntuPro => 'Ubuntu Pro 의 엔터프라이즈 급 24/7 지원';

  @override
  String get copyingFiles => '파일 복사 중…';

  @override
  String get installingSystem => '시스템 설치 중…';

  @override
  String get configuringSystem => '시스템 설정 중…';

  @override
  String get installationFailed => '설치 실패';

  @override
  String get notEnoughDiskSpaceTitle => '공간이 부족합니다';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return '$DISTRO 설치하기 위한 디스크 공간 부족';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return '선택한 디스크에는 $DISTRO를 설치할 디스크 공간이 부족합니다. 설치 프로그램을 종료하여 사용 가능한 공간을 확보하거나 다른 디스크를 선택하십시오.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => '사용 가능:';

  @override
  String get notEnoughDiskSpaceRequired => '필수:';

  @override
  String get refreshPageTitle => '업데이트 사용 가능';

  @override
  String get refreshHeader => '설치 관리자의 업데이트가 사용 가능합니다';

  @override
  String get refreshUpdateNow => '지금 업데이트';

  @override
  String get refreshInfo => '향상된 안정성과 더 많은 기능을 위해 최신 버전으로 업데이트하세요.';

  @override
  String get refreshReady => '업데이트 준비됨';

  @override
  String refreshCurrent(String snap, String version) {
    return '현재 $snap 버전은 $version입니다.';
  }

  @override
  String refreshInstall(String version) {
    return '$version 버전으로 업데이트하기';
  }

  @override
  String refreshUpToDate(String version) {
    return '현재 버전 $version은 최신 버전입니다.';
  }

  @override
  String refreshUpdating(String snap) {
    return '$snap 업데이트 중...';
  }

  @override
  String get refreshRestart => '설치 관리자를 닫고 다시 시작하여 계속하세요';

  @override
  String get refreshCloseLabel => '설치 관리자 닫기';

  @override
  String refreshSnapPrerequisites(String snap) {
    return '$snap에 필요한 요소를 확인하는 중...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return '$snap 새로 고침 중...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return '$snap을 다시 새로고침하는 중...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '$snap 준비 중...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return '$snap 다운로드 중...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return '$snap 검증 중...';
  }

  @override
  String refreshSnapMount(String snap) {
    return '$snap 마운트 중...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return '$snap 서비스 중지 중...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return '$snap alias 제거 중...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return '$snap 링크 해제 중...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return '$snap 에셋 업데이트 중...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return '$snap 커널 명령줄 업데이트 중...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return '$snap 데이터 복사 중...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return '$snap 보안 프로필 설정 중...';
  }

  @override
  String refreshSnapLink(String snap) {
    return '$snap 연결 중...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return '$snap 플러그 및 슬롯 연결 중...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return '자동 $snap alias 설정 중...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return '$snap alias 설정 중...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return '$snap 서비스 시작 중...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '$snap 정리하는 중...';
  }

  @override
  String get recoveryKeyTitle => 'TPM 복구 키';

  @override
  String get recoveryKeyCommand => '설치 후 다음 명령을 사용하여 복구 키에 액세스할 수 있습니다:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">경고:</font> 이 보안 키를 분실하면 모든 데이터가 손실됩니다. 필요한 경우 키를 적어서 다른 안전한 곳에 보관하세요.';
  }
}
