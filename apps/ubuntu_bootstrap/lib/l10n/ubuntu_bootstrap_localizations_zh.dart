import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class UbuntuBootstrapLocalizationsZh extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Ubuntu 桌面安装程序';

  @override
  String windowTitle(String RELEASE) {
    return '安装 $RELEASE';
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
  String get autoinstallDirectFileClearButtonLabel => 'Clear file';

  @override
  String get autoinstallDirectFilePickerTitle => 'Choose file';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML files';

  @override
  String get autoinstallDirectImportButtonLabel => 'Import';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'Autoinstall file is not reachable';

  @override
  String get autoinstallDirectErrorNetworkBody => 'Check the URL is correct, test your internet connection, or try later.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Invalid URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Check the URL is correct or select a local file.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Invalid autoinstall file';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Check the file or provide a different one.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Autoinstall file is not readable';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Check your permissions or provide a different file.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Unknown error';

  @override
  String get autoinstallTitle => '安装类型';

  @override
  String autoinstallHeader(String DISTRO) {
    return '您想如何安装 $DISTRO？';
  }

  @override
  String get autoinstallInstructions => '输入 autoinstall.yaml 的 URL：';

  @override
  String get autoinstallInteractiveOption => '交互安装';

  @override
  String get autoinstallInteractiveDescription => '适用于希望在逐步引导下完成安装的用户。';

  @override
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get autoinstallLandscapeOption => 'Automated with Landscape';

  @override
  String get autoinstallLandscapeDescription => 'For users in organisations that provide an autoinstall file via Landscape.';

  @override
  String get changeButtonText => '更改';

  @override
  String get quitButtonText => '退出安装';

  @override
  String loadingPageTitle(String DISTRO) {
    return '欢迎来到 $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '正在准备 $DISTRO…';
  }

  @override
  String get warningLabel => '警告：';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return '试用或安装 $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return '您想对 $DISTRO 做什么？';
  }

  @override
  String get tryOrInstallRepairOption => '修复安装';

  @override
  String get tryOrInstallRepairDescription => '修复选项将在保留个人数据和设置的情况下重新安装所有已安装的软件。';

  @override
  String tryOption(String RELEASE) {
    return '试用 $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return '您可以在不对电脑做任何改动的情况下试用 $RELEASE。';
  }

  @override
  String installOption(String RELEASE) {
    return '安装 $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return '安装 $RELEASE，并可选择保留或替换您当前的操作系统。这个过程应该不会花费太长时间。';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return '您可能想阅读<a href=\"$url\"> 发行注记</a>。';
  }

  @override
  String get rstTitle => '检测到 RST';

  @override
  String get rstHeader => '关闭 RST 以继续';

  @override
  String get rstDisable => 'Your computer uses Intel RST (Rapid Storage Technology). You can disable RST either in:';

  @override
  String get rstDisableWindows => 'Windows, if you are using a dual boot setup with Windows';

  @override
  String get rstDisableBios => 'The BIOS settings';

  @override
  String rstInstructions(String url) {
    return '有关说明，请在另一台设备上扫描二维码或访问：<a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => '配置安全启动';

  @override
  String get configureSecureBootDescription => '您已选择安装第三方驱动。这需要关闭安全启动。\n为此，您需要立即选择一个安全密钥，并在系统重新启动时输入。';

  @override
  String get configureSecureBootOption => '配置安全启动';

  @override
  String get chooseSecurityKey => '选择一个安全密钥';

  @override
  String get confirmSecurityKey => '确认安全密钥';

  @override
  String get dontInstallDriverSoftwareNow => '暂时不安装驱动程序';

  @override
  String get dontInstallDriverSoftwareNowDescription => '您可以稍后从「软件和更新」中安装它。';

  @override
  String get configureSecureBootSecurityKeyRequired => '需要安全密钥';

  @override
  String get secureBootSecurityKeysDontMatch => '安全密钥不匹配';

  @override
  String get showSecurityKey => '显示安全密钥';

  @override
  String get hideSecurityKey => '隐藏';

  @override
  String get updatesOtherSoftwarePageTitle => '应用程序和更新';

  @override
  String get updatesOtherSoftwarePageDescription => '您想先安装哪些应用？';

  @override
  String get codecsAndDriversPageTitle => '优化您的计算机';

  @override
  String get codecsAndDriversPageDescription => '安装推荐的专有软件吗？';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO 默认情况下不自带专有软件。安装额外软件可能会改善计算机的性能。';
  }

  @override
  String get codecsAndDriversNvidiaNote => '检测到 NVIDIA 显卡';

  @override
  String get codecsAndDriversNvidiaBody => '为使 NVIDIA 显卡发挥最佳性能，强烈推荐安装附加驱动。';

  @override
  String get fullInstallationTitle => '扩展集合';

  @override
  String get fullInstallationSubtitle => '一批对离线用户友好的办公应用、工具与网络浏览器。';

  @override
  String get minimalInstallationTitle => '默认集合';

  @override
  String get minimalInstallationSubtitle => '只安装必要软件、网络浏览器与基本工具。';

  @override
  String get otherOptions => '其他选项';

  @override
  String get installThirdPartyTitle => '为图形和 Wi-Fi 硬件以及其他媒体格式安装第三方软件';

  @override
  String get installThirdPartySubtitle => '这些软件受其文档中包含的许可条款约束。其中部分软件是专有软件。';

  @override
  String get installDriversTitle => '为图形和 Wi-Fi 硬件安装第三方软件';

  @override
  String get installDriversSubtitle => '包括但不限于 NVIDIA 驱动与类似软件';

  @override
  String get installCodecsTitle => '下载并安装对其他媒体格式的支持';

  @override
  String get installCodecsSubtitle => '包括但不限于 MP3、MP4、MOV 及类似格式的编解码器';

  @override
  String get batteryWarning => '计算机未连接到电源适配器。';

  @override
  String get offlineWarning => '您当前处于离线状态';

  @override
  String get choosePassphraseTitle => '磁盘密码';

  @override
  String get choosePassphraseHeader => '创建密码';

  @override
  String get choosePassphraseBody => '您需要密码来加密文件。在每次启动计算机时都会提示您输入此密码。';

  @override
  String get choosePassphraseHint => '选择密码';

  @override
  String get choosePassphraseConfirmHint => '确认密码';

  @override
  String get choosePassphraseRequired => '需要密码';

  @override
  String get choosePassphraseMismatch => '密码不匹配';

  @override
  String get choosePassphraseInfoHeader => '确保您已记下密码';

  @override
  String get choosePassphraseInfoBody => '如果您丢失了密码，所有数据都将丢失。';

  @override
  String get chooseOptionalPassphraseHeader => 'Create a passphrase (optional)';

  @override
  String get chooseOptionalPassphraseBody => 'A passphrase can help protect your data even if your hardware gets compromised. You will need to enter the passphrase every time you turn on your computer. You will not be able to remove it later';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Store your passphrase and recovery key somewhere safe';

  @override
  String get chooseOptionalPassphraseInfoBody => 'If you lose your passphrase, you will lose all your data. The passphrase does not replace the recovery key or your user password.';

  @override
  String get createPassphrase => '创建密码';

  @override
  String get confirmPassphrase => '确认密码';

  @override
  String get installationTypeTitle => '安装类型';

  @override
  String installationTypeHeader(String DISTRO) {
    return '您想如何安装 $DISTRO？';
  }

  @override
  String installationTypeOSDetected(String os) {
    return '目前此计算机上已安装了 $os。您准备怎么做？';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return '目前此计算机已安装了 $os1 与 $os2。您准备怎么做？';
  }

  @override
  String get installationTypeMultiOSDetected => '这台计算机已经安装了多个操作系统。您准备怎么做？';

  @override
  String get installationTypeNoOSDetected => '这台电脑目前没有检测到操作系统。您准备怎么做？';

  @override
  String installationTypeErase(String DISTRO) {
    return '擦除磁盘并安装 $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => '用所选磁盘执行全新安装。';

  @override
  String get installationTypeAdvancedLabel => '高级功能...';

  @override
  String get installationTypeAdvancedTitle => '高级功能';

  @override
  String get installationTypeExperimental => '实验性';

  @override
  String get installationTypeNone => '空';

  @override
  String get installationTypeNoneInfo => 'Standard file system without encryption.';

  @override
  String get installationTypeNoneSelected => '尚未选择任何安装选项';

  @override
  String get installationTypeLVM => '使用 LVM（逻辑卷管理）';

  @override
  String get installationTypeLVMSelected => '已选择配置 LVM';

  @override
  String get installationTypeLVMEncryption => '使用 LVM（逻辑卷管理）与加密';

  @override
  String get installationTypeLVMEncryptionInfo => 'You will need to enter a passphrase every time you turn on your computer. This uses LUKS encryption with LVM.';

  @override
  String get installationTypeLVMEncryptionSelected => '已选择配置加密的 LVM';

  @override
  String get installationTypeEncryptInfo => '您将在下一步中选择一个安全密钥。';

  @override
  String get installationTypeZFS => '实验性功能：擦除磁盘并使用ZFS';

  @override
  String get installationTypeZFSEncryption => '擦除硬盘，并使用加密的 ZFS';

  @override
  String get installationTypeZFSEncryptionInfo => 'Native encryption with ZFS. You will need to enter a passphrase every time you turn on your computer.';

  @override
  String get installationTypeZFSSelected => '已选择配置 ZFS';

  @override
  String get installationTypeZFSEncryptionSelected => '已选择使用加密 ZFS';

  @override
  String get installationTypeTPM => '启用硬件支持的全盘加密';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '这是一个实验性功能。您的硬件可能无法使用此功能，未来的 $DISTRO 发行版也可能不支持。在选择此选项前，请先<a href=\"$url\">了解 TPM 加密</a>。';
  }

  @override
  String get installationTypeTPMSelected => '已选择 TPM';

  @override
  String installationTypeReinstall(String os) {
    return '擦除 $os 并重新安装';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">警告：</font>这将删除您的 $os 中的所有程序、文档、照片、音乐和任何其他文件。';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return '在 $os 中安装 $product';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return '安装 $product 并与 $os1 和 $os2 共存';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return '安装 $product 并与它们共存';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return '安装 $product 并与其它分区共存';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return '将保存文件、音乐和其他个人文件。每次启动时，您可以选择所需的操作系统。';
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
  String get installationTypeManual => '手动分区';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return '适用于希望自定义磁盘配置的高级用户。';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return '擦除磁盘并安装 $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => '从头开始使用所选磁盘。';

  @override
  String get selectGuidedStorageDriveDropdownLabel => '选择驱动器：';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => '选择分区：';

  @override
  String get selectGuidedStorageInfoLabel => '将使用整块磁盘：';

  @override
  String get selectGuidedStorageInstallNow => '立即安装';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return '选择安装 $DISTRO 的位置';
  }

  @override
  String get installAlongsideSpaceDivider => '拖曳下面的分隔符分配磁盘空间：';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '有 $num 个小分区被隐藏 , 请使用 <a href=\"$url\">高级分区工具</a> 获得更多功能';
  }

  @override
  String get installAlongsideResizePartition => '调整分区大小';

  @override
  String get installAlongsideAllocateSpace => '分配空间';

  @override
  String get installAlongsideFiles => '文件';

  @override
  String get installAlongsidePartition => '分区：';

  @override
  String get installAlongsideSize => '大小：';

  @override
  String get installAlongsideAvailable => '可用：';

  @override
  String get allocateDiskSpace => '手动分区';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => '挂载点必须以“/”开头';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => '挂载点不可带有空格';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format 不是 $mountpoint 支持的文件系统';
  }

  @override
  String get diskHeadersDevice => '设备';

  @override
  String get diskHeadersType => '类型';

  @override
  String get diskHeadersMountPoint => '挂载点';

  @override
  String get diskHeadersSize => '大小';

  @override
  String get diskHeadersUsed => '已使用';

  @override
  String get diskHeadersSystem => '系统';

  @override
  String get diskHeadersFormat => '格式化';

  @override
  String get freeDiskSpace => '剩余空间';

  @override
  String get newPartitionTable => '新建分区表';

  @override
  String get newPartitionTableConfirmationTitle => '新建空分区';

  @override
  String get newPartitionTableConfirmationMessage => '在整个设备上创建一个新的分区表，将删除其当前所有的分区。此操作可在需要时随时撤销。';

  @override
  String get tooManyPrimaryPartitions => '主分区过多';

  @override
  String get partitionLimitReached => '已达上限';

  @override
  String get bootLoaderDevice => '用于安装引导程序的设备';

  @override
  String get partitionCreateTitle => '创建分区';

  @override
  String get partitionEditTitle => '编辑分区';

  @override
  String get partitionSizeLabel => '大小：';

  @override
  String get partitionTypeLabel => '指定新分区的类型：';

  @override
  String get partitionTypePrimary => '主分区';

  @override
  String get partitionTypeLogical => '逻辑分区';

  @override
  String get partitionLocationLabel => '新分区的位置：';

  @override
  String get partitionLocationBeginning => '空间起始位置';

  @override
  String get partitionLocationEnd => '空间结束位置';

  @override
  String get partitionFormatLabel => '用于：';

  @override
  String get partitionFormatNone => '保持未格式化';

  @override
  String partitionFormatKeep(String format) {
    return '保持 $format 格式';
  }

  @override
  String get partitionErase => '格式化分区';

  @override
  String get partitionMountPointLabel => '挂载点：';

  @override
  String get confirmPageTitle => '准备安装';

  @override
  String get confirmHeader => '回顾您的选择';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => '无';

  @override
  String get confirmDevicesTitle => '设备';

  @override
  String get confirmEntryApplications => '应用程序';

  @override
  String get confirmEntryDiskSetup => '磁盘配置';

  @override
  String get confirmEntryDiskEncryption => '磁盘加密';

  @override
  String get confirmEntryInstallationDisk => '安装磁盘';

  @override
  String get confirmEntryProprietarySoftware => '专有软件';

  @override
  String get confirmSectionGeneralTitle => '一般';

  @override
  String get confirmSectionSecurityAndMoreTitle => '安全及其他';

  @override
  String get confirmPartitionsTitle => '分区';

  @override
  String get confirmPartitionTables => '已更改以下设备的分区表：';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => '编解码器';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => '编解码器与驱动程序';

  @override
  String get confirmProprietarySoftwareDrivers => '驱动程序';

  @override
  String get confirmInstallButton => '安装';

  @override
  String get confirmTableErased => 'Erased';

  @override
  String get confirmTableUnchanged => 'Unchanged';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Resized from $oldsize to $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Created and formatted as $format used for $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formatted as $format used for $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Used for $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Formatted as $format';
  }

  @override
  String get installationCompleteTitle => '安装完成';

  @override
  String readyToUse(String system) {
    return '$system 已经安装并准备好使用了';
  }

  @override
  String rebootToConfigure(String system) {
    return '已将 **$system** 复制到磁盘';
  }

  @override
  String restartInto(String system) {
    return '重启进入 $system';
  }

  @override
  String get restartWarningBody => '重新启动以完成安装，也可以继续试用。\n您做出的任何更改都不会被保存。';

  @override
  String get rebootToConfigureWarning => '您需要重新启动计算机，以继续完成安装。';

  @override
  String get shutdown => '关机';

  @override
  String get restartNow => '立即重启';

  @override
  String get continueTesting => '继续试用';

  @override
  String get bitlockerInfoTitle => 'BitLocker detected';

  @override
  String get bitlockerInfoDescription => 'One or more partitions are encrypted with BitLocker.';

  @override
  String get bitlockerInfoDisable => 'To install alongside Windows, disable BitLocker in Windows.';

  @override
  String get bitlockerInfoRecovery => 'Windows may request recovery keys on boot after installation.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'For instructions, visit the <a href=\"$url\">BitLocker guide</a>.';
  }

  @override
  String get bitlockerWarningTitle => 'You may lose all your data without BitLocker recovery keys';

  @override
  String get restartComputer => 'Restart computer';

  @override
  String get restartComputerTitle => 'Restart computer?';

  @override
  String get restartIntoWindows => '重启进入 Windows';

  @override
  String get restartIntoWindowsTitle => '重启到 Windows？';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return '您确定要重新启动计算机吗？您需要稍后重新启动 $DISTRO 安装程序才能完成安装 $DISTRO。';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return '欢迎使用 $RELEASE';
  }

  @override
  String get installationSlidesAvailable => '可用：';

  @override
  String get installationSlidesIncluded => '包含：';

  @override
  String get installationSlidesWelcomeTitle => '快捷、自由、功能新颖，让人爱不释手';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return '$DISTRO 的全新版本将让您的计算机变得更加易于使用。';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return '不论你是开发者、创作者、游戏玩家还是管理员，你都能在 $RELEASE 中找到新的工具，以提高生产力并增强使用体验。';
  }

  @override
  String get installationSlidesSoftwareTitle => '您需要的所有应用程序';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return '在 Ubuntu 软件中心安装、管理和更新所有应用程序，包括来自 Snap Store 和 $DISTRO 存档的成千上万应用程序。';
  }

  @override
  String get installationSlidesDevelopmentTitle => '利用最好的开源软件进行开发';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO 是应用程序或 Web 开发、数据科学和 AI/ML 以及 DevOps 和管理的理想工作站。每个 $DISTRO 版本都包含最新的工具链，并支持所有主要的 IDE。';
  }

  @override
  String get installationSlidesCreativityTitle => '激发你的创造力';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return '如果您是动画师、设计师、视频创作者或游戏开发人员，$DISTRO 的开源和行业标准软件和应用程序的支持，让你能够轻松地将你的工作流程引入其中。';
  }

  @override
  String get installationSlidesGamingTitle => '出色的游戏体验';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO 支持最新的 NVIDIA 和 Mesa 驱动程序以提高性能和兼容性。数以千计的 Windows 游戏可通过 Steam 等应用程序在 $DISTRO 上畅玩，无需额外配置。';
  }

  @override
  String get installationSlidesSecurityTitle => '私密且安全';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO 提供了保持在线隐私和安全所需的所有工具。内置防火墙和 VPN 支持以及大量以隐私为中心的应用程序，可确保您完全控制自己的数据。';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return '所有 $DISTRO LTS 版本都包含五年的安全补丁，如果有 Ubuntu Pro 订阅，则可以延长至十年。';
  }

  @override
  String get installationSlidesProductivityTitle => '激发您的生产力，让你事半功倍';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO 桌面包含 LibreOffice，这是一套与 Microsoft Office 兼容的开源应用程序，用于文档，电子表格和演示文稿。流行的协作工具也可以使用。';
  }

  @override
  String get installationSlidesAccessibilityTitle => '每个人都可轻松使用';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '$DISTRO 哲学核心是计算机是为每个人而存在的信仰。通过先进的辅助工具和更改语言、颜色和文本大小的选项，$DISTRO 让计算机使用变得简单 - 无论你是谁，身在何处。';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca 屏幕阅读器';

  @override
  String get installationSlidesAccessibilityLanguages => '语言支持';

  @override
  String get installationSlidesSupportTitle => '帮助与支持';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return '$DISTRO 的官方文档可以通过在线方式或者在 Dock 中的帮助图标获取。';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu 覆盖了各种问题和回答，而 Ubuntu Discourse 为新手和有经验的用户提供指南和讨论。';

  @override
  String get installationSlidesSupportEnterprise => '对于企业用户，Canonical 提供商业支持，以便在工作场所轻松安全地使用和管理 Ubuntu。';

  @override
  String get installationSlidesSupportResources => '有用的资源：';

  @override
  String get installationSlidesSupportDocumentation => '官方文档';

  @override
  String get installationSlidesSupportUbuntuPro => '使用 Ubuntu Pro 可享受企业级 7*24 支持服务';

  @override
  String get copyingFiles => '正在复制文件……';

  @override
  String get installingSystem => '正在安装系统……';

  @override
  String get configuringSystem => '正在设置系统……';

  @override
  String get installationFailed => '安装失败';

  @override
  String get notEnoughDiskSpaceTitle => '磁盘空间不足';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return '磁盘空间不足，无法安装 $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return '所选磁盘没有足够空间可供安装 $DISTRO。请退出安装程序以腾出可用空间，或者选择其他磁盘。';
  }

  @override
  String get notEnoughDiskSpaceAvailable => '可用：';

  @override
  String get notEnoughDiskSpaceRequired => '必填：';

  @override
  String get refreshPageTitle => '更新可用';

  @override
  String get refreshHeader => '安装程序有可用更新';

  @override
  String get refreshUpdateNow => '现在更新';

  @override
  String get refreshInfo => '升级到最新版本，以改善可靠性、获得更多功能。';

  @override
  String get refreshReady => '更新准备就绪';

  @override
  String refreshCurrent(String snap, String version) {
    return '目前 $snap 的版本是 $version。';
  }

  @override
  String refreshInstall(String version) {
    return '更新到版本 $version';
  }

  @override
  String refreshUpToDate(String version) {
    return '当前版本 $version 是最新的。';
  }

  @override
  String refreshUpdating(String snap) {
    return '正在更新 $snap…';
  }

  @override
  String get refreshRestart => '请关闭并重新运行安装程序以继续';

  @override
  String get refreshCloseLabel => '关闭安装程序';

  @override
  String refreshSnapPrerequisites(String snap) {
    return '确保 $snap 的先决条件…';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return '正在刷新 $snap…';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return '正在检查 $snap 的再次刷新…';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '正在准备 $snap…';
  }

  @override
  String refreshSnapDownload(String snap) {
    return '正在下载 $snap…';
  }

  @override
  String refreshSnapValidate(String snap) {
    return '正在验证 $snap…';
  }

  @override
  String refreshSnapMount(String snap) {
    return '正在挂载 $snap…';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return '正在停止 $snap 服务…';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return '正在移除 $snap 别名…';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return '正在解除 $snap 链接…';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return '正在更新 $snap 资源…';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return '正在更新 $snap 内核命令行…';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return '正在复制 $snap 数据…';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return '正在配置 $snap 安全档案…';
  }

  @override
  String refreshSnapLink(String snap) {
    return '正在链接 $snap…';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return '正在连接 $snap 插头与插槽…';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return '正在设置 $snap 自动别名…';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return '正在配置 $snap 别名…';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return '正在启动 $snap 服务…';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '正在清理 $snap…';
  }

  @override
  String get recoveryKeyTitle => 'TPM 恢复密钥';

  @override
  String get recoveryKeyHeader => 'Get a recovery key';

  @override
  String get recoveryKeyInfoHeader => 'You may lose all your data without a recovery key';

  @override
  String recoveryKeyInfoBody(String distro) {
    return 'Get a recovery key as soon as you first log into $distro and store it somewhere safe.';
  }

  @override
  String get recoveryKeyCommand => '在安装完成后，您可以使用如下命令获取恢复密钥：';

  @override
  String get recoveryKeyStorageAdvice => 'Store the recovery key somewhere safe. Use it to decrypt the disk in case of certain system changes. For example, you may need it if you change the components in your computer or update firmware.';

  @override
  String get recoveryKeyConfirmation => 'I understand I may lose all my data if I don\'t have a recovery key';

  @override
  String landscapeMagicAttachInstructions(Object url) {
    return 'Scan the QR code or enter the code below at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Automated installation';

  @override
  String get landscapeHeader => 'Log in to Landscape';

  @override
  String get landscapeDomainHeader => 'Enter Landscape domain (FQDN)';

  @override
  String get landscapeDomainInstructions => 'Provide your organization\'s Landscape domain to log in and fetch an autoinstall file. You can get the FQDN from your IT support.';

  @override
  String get landscapeDomainTextField => 'Landscape domain (FQDN)';

  @override
  String get next => 'Next';

  @override
  String get landscapeDomainInvalidDomainWarning => 'Invalid domain, please check or contact your IT support';

  @override
  String get landscapeDomainNoInternetTitleWarning => 'Connect to the internet to continue';

  @override
  String get landscapeDomainNoInternetDescriptionWarning => 'Internet is needed to fetch the autoinstall file from Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'Code expired, please try again';

  @override
  String get landscapeLoginFailedWarning => 'Login failed, please try again';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class UbuntuBootstrapLocalizationsZhTw extends UbuntuBootstrapLocalizationsZh {
  UbuntuBootstrapLocalizationsZhTw(): super('zh_TW');

  @override
  String get appTitle => 'Ubuntu 桌面版安裝程式';

  @override
  String windowTitle(String RELEASE) {
    return '安裝 $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => '自動安裝';

  @override
  String get autoinstallDirectHeader => '導入自動安裝檔案';

  @override
  String get autoinstallDirectUrlLabel => '您可以輸入自動安裝檔案的 URL：';

  @override
  String get autoinstallDirectFileLabel => '或選擇本機檔案：';

  @override
  String get autoinstallDirectFileButtonLabel => '選擇檔案...';

  @override
  String get autoinstallTitle => '安裝類型';

  @override
  String autoinstallHeader(String DISTRO) {
    return '您要如何安裝 $DISTRO？';
  }

  @override
  String get autoinstallInstructions => '輸入 autoinstall.yaml 的網址：';

  @override
  String get autoinstallInteractiveOption => '互動式安裝';

  @override
  String get autoinstallInteractiveDescription => '適用於想要在引導下一步一步地完成安裝的使用者。';

  @override
  String get changeButtonText => '變更';

  @override
  String get quitButtonText => '離開安裝程式';

  @override
  String loadingPageTitle(String DISTRO) {
    return '歡迎使用 $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '正在準備 $DISTRO…';
  }

  @override
  String get warningLabel => '警告：';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return '試用或安裝 $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return '您要如何使用 $DISTRO？';
  }

  @override
  String get tryOrInstallRepairOption => '修復既有的系統安裝';

  @override
  String get tryOrInstallRepairDescription => '修復系統會重新安裝已安裝的軟體，而不會動到您的文件或是設定。';

  @override
  String tryOption(String RELEASE) {
    return '試用 $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return '您可以試用 $RELEASE，而不會對您的電腦進行任何變動。';
  }

  @override
  String installOption(String RELEASE) {
    return '安裝 $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return '安裝 $RELEASE ，可與您目前的作業系統共存，或取代該系統，這不會耗費太多時間。';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return '您也可以閱覽<a href=\"$url\">產品發布說明</a>。';
  }

  @override
  String get rstTitle => '快速儲存技術 (RST) 已啟用';

  @override
  String get rstHeader => '關閉 RST 以繼續安裝';

  @override
  String rstInstructions(String url) {
    return '請用其他裝置掃描 QR Code 或造訪 <a href=\"https://$url\">$url</a> 以取得詳細步驟';
  }

  @override
  String get configureSecureBootTitle => '設定安全開機 (Secure Boot)';

  @override
  String get configureSecureBootDescription => '您已經選擇安裝第三方驅動，本功能需要關閉安全開機 (Secure Boot) 才能使用。\n為此您需要在此輸入一個安全密鑰，並在系統重啟時輸入。';

  @override
  String get configureSecureBootOption => '設定安全開機 (Secure Boot)';

  @override
  String get chooseSecurityKey => '選擇安全密鑰';

  @override
  String get confirmSecurityKey => '確認安全密鑰';

  @override
  String get dontInstallDriverSoftwareNow => '不要立即安裝驅動程式';

  @override
  String get dontInstallDriverSoftwareNowDescription => '您可以在「軟體與更新」中再行安裝。';

  @override
  String get configureSecureBootSecurityKeyRequired => '安全密鑰為必填欄位';

  @override
  String get secureBootSecurityKeysDontMatch => '安全密鑰前後不符';

  @override
  String get showSecurityKey => '顯示';

  @override
  String get hideSecurityKey => '隱藏';

  @override
  String get updatesOtherSoftwarePageTitle => '應用程式與更新';

  @override
  String get updatesOtherSoftwarePageDescription => '你首先想安裝些什麼程式？';

  @override
  String get codecsAndDriversPageTitle => '最佳化您的電腦';

  @override
  String get codecsAndDriversPageDescription => '是否要安裝推薦的專有軟體？';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO 預設沒有自帶專有軟體。安裝額外的專有軟體可能會改進您電腦的效能。';
  }

  @override
  String get codecsAndDriversNvidiaNote => '偵測到 NVIDIA 顯示界面';

  @override
  String get codecsAndDriversNvidiaBody => '強烈建議安裝額外的驅動程式以在 NVIDIA 顯示界面上實現最佳效能。';

  @override
  String get fullInstallationTitle => '完整安裝';

  @override
  String get fullInstallationSubtitle => '可離線使用的辦公室套件、公用程式、網頁瀏覽器軟體集合。';

  @override
  String get minimalInstallationTitle => '預設安裝';

  @override
  String get minimalInstallationSubtitle => '僅安裝網頁瀏覽器和基本公用程式的必要功能。';

  @override
  String get otherOptions => '其它選項';

  @override
  String get installThirdPartyTitle => '安裝用於顯示與 Wi-Fi 網路硬體的第三方軟體，以及額外的媒體格式播放支援';

  @override
  String get installThirdPartySubtitle => '這些軟體受到所付文件描述之授權條款約束。其部份為專有軟體。';

  @override
  String get installDriversTitle => '安裝第三方軟體以使用顯示卡、無線網路等硬體';

  @override
  String get installDriversSubtitle => '包含但不限於 NVIDIA 顯示驅動程式與類似之軟體';

  @override
  String get installCodecsTitle => '安裝第三方軟體以提供額外的媒體格式支援';

  @override
  String get installCodecsSubtitle => '包含但不限於 MP3、MP4、MOV 以及其他的媒體類型';

  @override
  String get batteryWarning => '這台電腦並沒有連接電源。';

  @override
  String get offlineWarning => '您目前處於離線狀態';

  @override
  String get choosePassphraseTitle => '磁碟解密密語';

  @override
  String get choosePassphraseHeader => '創建一個密語';

  @override
  String get choosePassphraseBody => '您需要一個密語來加密您的檔案。您會於每次啟動您的電腦時被要求輸入您的解密密語。';

  @override
  String get choosePassphraseHint => '選擇一個密語';

  @override
  String get choosePassphraseConfirmHint => '確認您所輸入的密語是否正確';

  @override
  String get choosePassphraseRequired => '需要一個密語';

  @override
  String get choosePassphraseMismatch => '您輸入之密語並不吻合';

  @override
  String get choosePassphraseInfoHeader => '確保您妥善保存您的密語';

  @override
  String get choosePassphraseInfoBody => '如果您遺失了您的密語，您將會丟失您所有的資料。';

  @override
  String get createPassphrase => '創建一個密語';

  @override
  String get confirmPassphrase => '確認您的密語輸入正確';

  @override
  String get installationTypeTitle => '安裝磁碟設定';

  @override
  String installationTypeHeader(String DISTRO) {
    return '您要如何安裝 $DISTRO？';
  }

  @override
  String installationTypeOSDetected(String os) {
    return '本電腦目前已安裝了 $os，請問您想要怎麼處理？';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return '本電腦目前已安裝 $os1 與 $os2，請問您想要怎麼處理？';
  }

  @override
  String get installationTypeMultiOSDetected => '本電腦目前已安裝多個作業系統，請問您想要怎麼處理？';

  @override
  String get installationTypeNoOSDetected => '本電腦目前沒有被偵測到的作業系統。請問您想要怎麼處理？';

  @override
  String installationTypeErase(String DISTRO) {
    return '清除磁碟並安裝 $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => '在您選擇的磁碟上從零開始。';

  @override
  String get installationTypeAdvancedLabel => '進階功能……';

  @override
  String get installationTypeAdvancedTitle => '進階功能';

  @override
  String get installationTypeExperimental => '實驗性功能';

  @override
  String get installationTypeNone => '無';

  @override
  String get installationTypeNoneSelected => '未選擇';

  @override
  String get installationTypeLVM => '使用 LVM 磁碟配置';

  @override
  String get installationTypeLVMSelected => '已選用 LVM';

  @override
  String get installationTypeLVMEncryption => '使用 LVM 磁碟配置與磁碟加密';

  @override
  String get installationTypeLVMEncryptionSelected => '已選用 LVM 及加密';

  @override
  String get installationTypeEncryptInfo => '在下一步中您需要輸入安全密鑰。';

  @override
  String get installationTypeZFS => '實驗功能：清除硬碟並使用 ZFS';

  @override
  String get installationTypeZFSEncryption => '清除磁碟並使用帶加密的 ZFS 儲存系統';

  @override
  String get installationTypeZFSSelected => '已選用 ZFS';

  @override
  String get installationTypeZFSEncryptionSelected => '已選擇 ZFS 以及加密設定';

  @override
  String get installationTypeTPM => '實驗功能：使用 TPM 支援的全硬碟加密';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '這是一個實驗性的功能。它可能無法跟您的硬體或是未來的 $DISTRO 版本上正常運作。在您選擇這個選項前<a href=\"$url\">請先詳閱 TPM 加密的相關細節</a>。';
  }

  @override
  String get installationTypeTPMSelected => '已選用 TPM 加密';

  @override
  String installationTypeReinstall(String os) {
    return '清除 $os 並重新安裝';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">警告：</font>這將會刪除 $os 下的全部應用程式、文件、圖片、音樂等檔案。';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return '安裝 $product 與 $os 共存';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return '安裝 $product 與 $os1 和 $os2 共存';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return '安裝 $product 與其它系統共存';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return '安裝 $product 與其它分割區共存';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return '選擇一個分割區來調整大小並為$product建立空間。您可以在啟動時選擇作業系統。';
  }

  @override
  String get installationTypeManual => '手動硬碟分割';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return '適用於需要客製磁碟分區配置的進階使用者。';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return '清除硬碟並安裝 $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => '在您選擇的磁碟上從零開始。';

  @override
  String get selectGuidedStorageDriveDropdownLabel => '選擇磁碟機：';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => '選擇磁碟分區：';

  @override
  String get selectGuidedStorageInfoLabel => '會使用整個磁碟：';

  @override
  String get selectGuidedStorageInstallNow => '立即安裝';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return '選擇要在何處安裝 $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => '請拖曳下方的分隔棒來分配硬碟空間：';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num 個小型分割區已被隱藏，若需要詳細設定，請使用<a href=\"$url\">進階分割工具</a>';
  }

  @override
  String get installAlongsideResizePartition => '調整分割區';

  @override
  String get installAlongsideAllocateSpace => '分配空間';

  @override
  String get installAlongsideFiles => '檔案';

  @override
  String get installAlongsidePartition => '分割區：';

  @override
  String get installAlongsideSize => '大小：';

  @override
  String get installAlongsideAvailable => '剩餘：';

  @override
  String get allocateDiskSpace => '手動分割';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => '掛載點必須以 \"/\" 開頭';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => '掛載點不可包含空白字元';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format 不是 $mountpoint 支援的檔案系統';
  }

  @override
  String get diskHeadersDevice => '裝置';

  @override
  String get diskHeadersType => '類型';

  @override
  String get diskHeadersMountPoint => '掛載點';

  @override
  String get diskHeadersSize => '大小';

  @override
  String get diskHeadersUsed => '已用';

  @override
  String get diskHeadersSystem => '系統';

  @override
  String get diskHeadersFormat => '格式化';

  @override
  String get freeDiskSpace => '可用空間';

  @override
  String get newPartitionTable => '新建分割表';

  @override
  String get newPartitionTableConfirmationTitle => '新建分割區';

  @override
  String get newPartitionTableConfirmationMessage => '在整個硬碟上建立新分割表會移除目前所有的分割區，本操作若有需要可以復原。';

  @override
  String get tooManyPrimaryPartitions => '主要分割區過多';

  @override
  String get partitionLimitReached => '已達上限';

  @override
  String get bootLoaderDevice => '安裝開機載入程式的裝置';

  @override
  String get partitionCreateTitle => '建立分割區';

  @override
  String get partitionEditTitle => '編輯分割區';

  @override
  String get partitionSizeLabel => '大小：';

  @override
  String get partitionTypeLabel => '新分割區的類型：';

  @override
  String get partitionTypePrimary => '主要分割區';

  @override
  String get partitionTypeLogical => '邏輯分割區';

  @override
  String get partitionLocationLabel => '新分割區的位置：';

  @override
  String get partitionLocationBeginning => '此空間的起始位置';

  @override
  String get partitionLocationEnd => '此空間的結束位置';

  @override
  String get partitionFormatLabel => '用於：';

  @override
  String get partitionFormatNone => '保持未格式化';

  @override
  String partitionFormatKeep(String format) {
    return '保持 $format 格式';
  }

  @override
  String get partitionErase => '格式化分割區';

  @override
  String get partitionMountPointLabel => '掛載點：';

  @override
  String get confirmPageTitle => '準備開始安裝';

  @override
  String get confirmHeader => '審閱您的選擇';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => '無';

  @override
  String get confirmDevicesTitle => '裝置';

  @override
  String get confirmEntryApplications => '應用軟體';

  @override
  String get confirmEntryDiskSetup => '磁碟設定';

  @override
  String get confirmEntryDiskEncryption => '磁碟加密';

  @override
  String get confirmEntryInstallationDisk => '安裝磁碟';

  @override
  String get confirmEntryProprietarySoftware => '專有軟體';

  @override
  String get confirmSectionGeneralTitle => '一般';

  @override
  String get confirmSectionSecurityAndMoreTitle => '安全與更多設定';

  @override
  String get confirmPartitionsTitle => '分割區';

  @override
  String get confirmPartitionTables => '下列裝置的分割區將被修改：';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => '影音編解碼器';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => '影音編解碼器及驅動程式';

  @override
  String get confirmProprietarySoftwareDrivers => '驅動程式';

  @override
  String get confirmInstallButton => '開始安裝';

  @override
  String get installationCompleteTitle => '安裝完成';

  @override
  String readyToUse(String system) {
    return '$system 已完成安裝，且可以開始使用';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** 已經被複製進磁碟中';
  }

  @override
  String restartInto(String system) {
    return '重新開機進入 $system';
  }

  @override
  String get restartWarningBody => '重新啟動電腦以完成安裝或是繼續您的測試。\n任何您所作的變更將不會被保存。';

  @override
  String get rebootToConfigureWarning => '您必須重新啟動電腦以繼續您的安裝流程。';

  @override
  String get shutdown => '關機';

  @override
  String get restartNow => '立即重新啟動';

  @override
  String get continueTesting => '繼續試用';

  @override
  String get restartIntoWindows => '重啟進入 Windows';

  @override
  String get restartIntoWindowsTitle => '是否重啟進入 Windows？';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return '您是否要重啟您的電腦？您之後將要重啟進入 $DISTRO 的安裝程式才能完成安裝 $DISTRO。';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return '歡迎使用 $RELEASE';
  }

  @override
  String get installationSlidesAvailable => '可選用：';

  @override
  String get installationSlidesIncluded => '已安裝：';

  @override
  String get installationSlidesWelcomeTitle => '快速、免費、滿滿的新功能';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return '最新版本的 $DISTRO 讓使用電腦成為更加容易的體驗。';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return '無論您是開發者、創作者、玩家還是管理者，您都能在 $RELEASE 找到新的工具來提高生產力並增強使用體驗。';
  }

  @override
  String get installationSlidesSoftwareTitle => '包含您需要的所有應用程式';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return '在 Ubuntu 軟體中心安裝、管理和更新您的所有應用軟體，包括來自 Snap Store 和 $DISTRO 軟體庫的上千個應用軟體。';
  }

  @override
  String get installationSlidesDevelopmentTitle => '站在開源的肩膀上進行開發';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO 乃一個理想的工作站，適合研發應用程式、網站、資料科學、人工智慧/機器學習，以及進行 DevOps 和系統管理。每一個 $DISTRO 版本皆包含最新的工具鏈，並支援所有主流的開發環境 (IDE)。';
  }

  @override
  String get installationSlidesCreativityTitle => '激發您的創造力';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return '如果您是動畫師、設計師、影片創作者或遊戲開發者，您可以容易的代入您的工作流程到 $DISTRO，其有開源與行業標準的軟體與應用程式支援。';
  }

  @override
  String get installationSlidesGamingTitle => '玩遊戲，很可以';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO 為了增進效能與相容性，支援最新的 NVIDIA 與 Mesa 驅動程式。上千個 Windows 遊戲在 $DISTRO 上面無需另外配置，即可透過如 Steam 等的應用程式上遊玩。';
  }

  @override
  String get installationSlidesSecurityTitle => '隱私與安全';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO 提供保持隱私與安全的所有工具，內建防火牆與 VPN 支援，以及一群以隱私為中心的應用程式來保障您有您資料的絕對掌控權。';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return '所有 $DISTRO LTS 版本均提供五年的安全更新，若使用 Ubuntu Pro 訂閱可延長至十年。';
  }

  @override
  String get installationSlidesProductivityTitle => '強化您的生產力';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO 桌面包含 LibreOffice，是與 Microsoft Office 相容，用於文件、試算表與簡報的開源應用程式，另有流行的協作工具可供使用。';
  }

  @override
  String get installationSlidesAccessibilityTitle => '人人均可使用';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '$DISTRO 的中心思想是每個人都能夠使用電腦，$DISTRO 以先進的親和力工具以及提供變更語言、顏色、文字大小的選項，使得無論何人何地均可以輕鬆使用電腦。';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca 螢幕閱讀程式';

  @override
  String get installationSlidesAccessibilityLanguages => '語言支援';

  @override
  String get installationSlidesSupportTitle => '幫助與支援';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return '$DISTRO 的官方文件可以透過線上或在 Dock 中的「求助」圖示存取。';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu 含括了各式各樣的問題與回答，而 Ubuntu Discourse 則可為新手與有經驗的使用者提供指南與討論。';

  @override
  String get installationSlidesSupportEnterprise => 'Canonical 對企業用戶提供商業支援，以便在工作場所輕鬆、安全的安裝與管理 Ubuntu。';

  @override
  String get installationSlidesSupportResources => '有用資源：';

  @override
  String get installationSlidesSupportDocumentation => '官方說明文件';

  @override
  String get installationSlidesSupportUbuntuPro => 'Ubuntu Pro 的 24/7 全天候企業級支援';

  @override
  String get copyingFiles => '正在複製檔案…';

  @override
  String get installingSystem => '正在安裝系統…';

  @override
  String get configuringSystem => '正在設定系統…';

  @override
  String get installationFailed => '安裝失敗';

  @override
  String get notEnoughDiskSpaceTitle => '可用磁碟空間不足';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return '硬碟可用空間不足，無法安裝 $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return '您選擇的磁碟沒有足夠空間安裝 $DISTRO。結束安裝程式以挪出更多空間或是選擇另一個磁碟進行安裝。';
  }

  @override
  String get notEnoughDiskSpaceAvailable => '可用：';

  @override
  String get notEnoughDiskSpaceRequired => '需要：';

  @override
  String get refreshPageTitle => '有可用的更新';

  @override
  String get refreshHeader => '安裝程式有可用更新';

  @override
  String get refreshUpdateNow => '現在進行更新';

  @override
  String get refreshInfo => '更新到最新版本以得到改善的可靠性與更多功能。';

  @override
  String get refreshReady => '更新已就緒';

  @override
  String refreshCurrent(String snap, String version) {
    return '目前 $snap 的版本是 $version。';
  }

  @override
  String refreshInstall(String version) {
    return '更新到 $version 版本';
  }

  @override
  String refreshUpToDate(String version) {
    return '目前的 $version 版本為最新版本。';
  }

  @override
  String refreshUpdating(String snap) {
    return '正在更新 $snap……';
  }

  @override
  String get refreshRestart => '請關閉並重新啟動安裝程式以繼續安裝';

  @override
  String get refreshCloseLabel => '關閉安裝程式';

  @override
  String refreshSnapPrerequisites(String snap) {
    return '正在確保 $snap 的前備條件已被滿足……';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return '正在更新 $snap……';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return '正在檢查 $snap re-refresh 狀態……';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '正在準備 $snap……';
  }

  @override
  String refreshSnapDownload(String snap) {
    return '正在下載 $snap……';
  }

  @override
  String refreshSnapValidate(String snap) {
    return '正在驗證 $snap……';
  }

  @override
  String refreshSnapMount(String snap) {
    return '正在掛載 $snap……';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return '正在停止 $snap 的服務……';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return '正在移除 $snap 的命令別名……';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return '正在解除 $snap 的連結……';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return '正在更新 $snap 的附加檔案 (assets)……';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return '正在更新 $snap 的核心指令 (kernel command line)……';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return '正在複製 $snap 的資料……';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return '正在設定 $snap 的安全設定檔……';
  }

  @override
  String refreshSnapLink(String snap) {
    return '正在連結 $snap……';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return '正在連接 $snap 的權限限縮介面插頭(plug)與插槽(slot)……';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return '正在設定 $snap 的自動命令別名……';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return '正在設定 $snap 的命令別名……';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return '正在啟動 $snap 的服務……';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '正在清理 $snap 的資料……';
  }

  @override
  String get recoveryKeyTitle => 'TPM 復原密鑰';

  @override
  String get recoveryKeyCommand => '安裝後，您可以透過以下指令來取得您的復原密鑰：';
}
