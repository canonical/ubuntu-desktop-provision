import 'ubuntu_bootstrap_localizations.dart';

/// The translations for Chinese (`zh`).
class UbuntuBootstrapLocalizationsZh extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Ubuntu 桌面安装程序';

  @override
  String windowTitle(Object RELEASE) {
    return '安装 $RELEASE';
  }

  @override
  String get changeButtonText => '更改';

  @override
  String get quitButtonText => '退出安装';

  @override
  String loadingPageTitle(Object DISTRO) {
    return '欢迎来到 $DISTRO';
  }

  @override
  String loadingHeader(Object DISTRO) {
    return '正在准备 $DISTRO…';
  }

  @override
  String welcomePageTitle(Object DISTRO) {
    return '试用或安装$DISTRO';
  }

  @override
  String get welcomeRepairOption => '修复安装';

  @override
  String get welcomeRepairDescription => '修复选项将在保留个人数据和设置的情况下重新安装所有已安装的软件。';

  @override
  String welcomeTryOption(Object RELEASE) {
    return '试用 $RELEASE';
  }

  @override
  String welcomeTryDescription(Object RELEASE) {
    return '您可以在不对电脑做任何改动的情况下试用 $RELEASE。';
  }

  @override
  String welcomeInstallOption(Object RELEASE) {
    return '安装 $RELEASE';
  }

  @override
  String welcomeInstallDescription(Object RELEASE) {
    return '安装 $RELEASE，并可选择保留或替换您当前的操作系统。这个过程应该不会花费太长时间。';
  }

  @override
  String welcomeReleaseNotesLabel(Object url) {
    return '您可能想阅读<a href=\"$url\"> 发行注记</a>。';
  }

  @override
  String get rstTitle => 'RST 已启用';

  @override
  String get rstHeader => '关闭 RST 以继续';

  @override
  String get rstDescription => '这台电脑使用了英特尔RST（快速存储技术）。在安装Ubuntu之前，您需要在Windows中关闭RST。';

  @override
  String rstInstructions(Object url) {
    return '有关说明，请在另一台设备上扫描QR码或访问：<a href=\"https://$url\">$url</a>';
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
  String get updatesOtherSoftwarePageTitle => '应用程序和更新';

  @override
  String get updatesOtherSoftwarePageDescription => '您想先安装哪些应用？';

  @override
  String get fullInstallationTitle => 'Full installation';

  @override
  String get fullInstallationSubtitle => 'An offline-friendly selection of office tools, utilities, web browser and games.';

  @override
  String get minimalInstallationTitle => 'Default installation';

  @override
  String get minimalInstallationSubtitle => 'Just the essentials, web browser and basic utilities.';

  @override
  String get otherOptions => '其他选项';

  @override
  String get installThirdPartyTitle => '为图形和 Wi-Fi 硬件以及其他媒体格式安装第三方软件';

  @override
  String get installThirdPartySubtitle => '这些软件受其文档中包含的许可条款约束。其中部分软件是专有软件。';

  @override
  String get installDriversTitle => '为图形和 Wi-Fi 硬件安装第三方软件';

  @override
  String get installDriversSubtitle => '这些驱动受它们文档中的许可条款约束。它们是专有软件。';

  @override
  String get installCodecsTitle => '下载并安装对其他媒体格式的支持';

  @override
  String get installCodecsSubtitle => '这些软件受其文档中包含的许可条款约束。其中部分软件是专有软件。';

  @override
  String onBatteryWarning(Object color) {
    return '<font color=\"$color\">警告</font>：电脑未接入电源适配器。';
  }

  @override
  String get offlineWarning => '您当前处于离线状态';

  @override
  String get chooseSecurityKeyTitle => '安全密钥';

  @override
  String chooseSecurityKeyHeader(Object RELEASE) {
    return '磁盘加密会保护磁盘上的文件，以免因电脑丢失而蒙受损失。但是，每次在计算机启动时，它会要求您输入一个安全密钥。\n\n$RELEASE之外的任何文件都不会加密。';
  }

  @override
  String get chooseSecurityKeyHint => '选择一个安全密钥';

  @override
  String get chooseSecurityKeyConfirmHint => '确认安全密钥';

  @override
  String get chooseSecurityKeyRequired => '需要一个安全密钥';

  @override
  String get chooseSecurityKeyMismatch => '安全密钥不匹配';

  @override
  String chooseSecurityKeyWarning(Object color) {
    return '<font color=\"$color\">警告</font>：如果丢失此安全密钥，所有数据都将丢失。以防万一，您可以记下您的安全密钥并保存到安全的地方。';
  }

  @override
  String get installationTypeTitle => '安装类型';

  @override
  String installationTypeOSDetected(Object os) {
    return '这台电脑上当前安装了$os。您准备怎么做？';
  }

  @override
  String installationTypeDualOSDetected(Object os1, Object os2) {
    return '这台计算机已安装有$os1与$os2了。您准备怎么做？';
  }

  @override
  String get installationTypeMultiOSDetected => '这台计算机已经安装了多个操作系统。您准备怎么做？';

  @override
  String get installationTypeNoOSDetected => '这台电脑目前没有检测到操作系统。您准备怎么做？';

  @override
  String installationTypeErase(Object DISTRO) {
    return '擦除磁盘并安装$DISTRO';
  }

  @override
  String installationTypeEraseWarning(Object color) {
    return '<font color=\"$color\">警告：</font>这将删除所有操作系统中的所有程序、文档、照片、音乐和任何其他文件。';
  }

  @override
  String get installationTypeAdvancedLabel => '高级功能...';

  @override
  String get installationTypeAdvancedTitle => '高级功能';

  @override
  String get installationTypeNone => '空';

  @override
  String get installationTypeNoneSelected => '尚未选择任何安装选项';

  @override
  String installationTypeLVM(Object RELEASE) {
    return '在新的 $RELEASE 安装中使用 LVM';
  }

  @override
  String get installationTypeLVMSelected => '已选择配置 LVM';

  @override
  String get installationTypeLVMEncryptionSelected => '已选择配置加密的 LVM';

  @override
  String installationTypeEncrypt(Object RELEASE) {
    return '为安全起见，对新的 $RELEASE 安装进行加密';
  }

  @override
  String get installationTypeEncryptInfo => '您将在下一步中选择一个安全密钥。';

  @override
  String get installationTypeZFS => '实验性功能：擦除磁盘并使用ZFS';

  @override
  String get installationTypeZFSSelected => '已选择 ZFS';

  @override
  String get installationTypeTPM => 'EXPERIMENTAL: Enable hardware-backed full disk encryption';

  @override
  String installationTypeTPMWarning(Object color, Object url) {
    return '<font color=\"$color\">Warning:</font> This feature is only supported on certain hardware configurations and may not support upgrading to future Ubuntu releases. Please read the <a href=\"$url\">release notes</a> before enabling.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM selected';

  @override
  String installationTypeReinstall(Object os) {
    return '擦除 $os 并重新安装';
  }

  @override
  String installationTypeReinstallWarning(Object color, Object os) {
    return '<font color=\"$color\">警告：</font>这将删除您的 $os 中的所有程序、文档、照片、音乐和任何其他文件。';
  }

  @override
  String installationTypeAlongside(Object product, Object os) {
    return '在 $os 中安装 $product';
  }

  @override
  String installationTypeAlongsideDual(Object product, Object os1, Object os2) {
    return '安装 $product 并与 $os1 和 $os2 共存';
  }

  @override
  String installationTypeAlongsideMulti(Object product) {
    return '安装 $product 并与它们共存';
  }

  @override
  String installationTypeAlongsideUnknown(Object product) {
    return '安装 $product 并与其它分区共存';
  }

  @override
  String get installationTypeAlongsideInfo => '将保存文件、音乐和其他个人文件。每次启动时，您可以选择所需的操作系统。';

  @override
  String get installationTypeManual => '手动分区';

  @override
  String installationTypeManualInfo(Object DISTRO) {
    return '您可以创建分区或调整分区大小，或者为$DISTRO选择多个分区';
  }

  @override
  String selectGuidedStoragePageTitle(Object DISTRO) {
    return '擦除磁盘并安装 $DISTRO';
  }

  @override
  String get selectGuidedStorageDropdownLabel => '选择磁盘：';

  @override
  String get selectGuidedStorageInfoLabel => '将使用整块磁盘：';

  @override
  String get selectGuidedStorageInstallNow => '立即安装';

  @override
  String get installAlongsideSpaceDivider => '拖曳下面的分隔符分配磁盘空间：';

  @override
  String installAlongsideHiddenPartitions(Object num, Object url) {
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
  String get allocateDiskSpaceInvalidMountPointSlash => 'Mount points must start with \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Mount points cannot contain spaces';

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
  String get newPartitionTableConfirmationMessage => '在整个设备上创建一个新的分区表，将删除其当前所有的分区。如果需要的话，这个操作可以被撤销。';

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
  String partitionFormatKeep(Object format) {
    return 'Leave formatted as $format';
  }

  @override
  String get partitionErase => '格式化分区';

  @override
  String get partitionMountPointLabel => '挂载点：';

  @override
  String get confirmPageTitle => '准备安装';

  @override
  String get confirmHeader => '如果继续，下面列出的更改将会写入磁盘。您可以手动进行进一步的更改。';

  @override
  String get confirmDevicesTitle => '设备';

  @override
  String get confirmPartitionsTitle => '分区';

  @override
  String get confirmPartitionTables => '已更改以下设备的分区表：';

  @override
  String confirmPartitionTable(Object serial, Object path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => '将应用以下分区更改：';

  @override
  String confirmPartitionResize(Object sysname, Object oldsize, Object newsize) {
    return '分区<b>$sysname</b> 从<b>$oldsize</b> 调整为<b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(Object sysname, Object format, Object mount) {
    return '分区<b>$sysname</b> 格式化为<b>$format</b> 并挂载到<b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(Object sysname, Object format) {
    return '分区<b>$sysname</b> 格式化为<b>$format</b>';
  }

  @override
  String confirmPartitionMount(Object sysname, Object mount) {
    return '分区 <b>$sysname</b> 挂载到 <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(Object sysname) {
    return '分区 <b>$sysname</b> 已创建';
  }

  @override
  String get confirmInstallButton => '安装';

  @override
  String get installationCompleteTitle => '安装完成';

  @override
  String readyToUse(Object system) {
    return '**$system** 已经安装并准备好使用了';
  }

  @override
  String restartInto(Object system) {
    return '重启进入 $system';
  }

  @override
  String restartWarning(Object RELEASE) {
    return '您现在可以继续测试 $RELEASE，但在重新启动计算机之前，您所做的任何更改或保存的文档都不会被保留。';
  }

  @override
  String get shutdown => '关机';

  @override
  String get restartNow => '立即重启';

  @override
  String get continueTesting => '继续试用';

  @override
  String get bitlockerTitle => '已启用 BitLocker';

  @override
  String get bitlockerHeader => '关闭 BitLocker 以继续';

  @override
  String bitlockerDescription(Object option) {
    return '这台电脑使用了 Windows BitLocker 进行加密。\n在安装 Ubuntu 之前，您需要关闭 Windows 的 BitLocker 功能。';
  }

  @override
  String bitlockerInstructions(Object url) {
    return '有关说明，请在另一台设备上扫描QR码或访问该网址：<a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => '重启进入 Windows';

  @override
  String get restartIntoWindowsTitle => '重启到 Windows？';

  @override
  String restartIntoWindowsDescription(Object DISTRO) {
    return '您确定要重新启动计算机吗？您需要稍后重新启动 $DISTRO 安装程序才能完成安装 $DISTRO。';
  }

  @override
  String installationSlidesTitle(Object RELEASE) {
    return '欢迎使用 $RELEASE';
  }

  @override
  String get installationSlidesAvailable => '可用：';

  @override
  String get installationSlidesIncluded => '包含：';

  @override
  String get installationSlidesWelcomeTitle => '快捷、自由、功能新颖，让人爱不释手';

  @override
  String installationSlidesWelcomeHeader(Object DISTRO) {
    return '$DISTRO 最新版本的推出，让计算机的使用变得前所未有的容易。';
  }

  @override
  String installationSlidesWelcomeBody(Object RELEASE) {
    return '不论你是开发者、创作者、游戏玩家还是管理员，你都能在 $RELEASE 中找到新的工具，以提高生产力并增强使用体验。';
  }

  @override
  String get installationSlidesSoftwareTitle => '您需要的所有应用程序';

  @override
  String installationSlidesSoftwareBody(Object DISTRO) {
    return '在 Ubuntu 软件中心安装、管理和更新所有应用程序，包括来自 Snap Store 和 $DISTRO 存档的成千上万应用程序。';
  }

  @override
  String get installationSlidesDevelopmentTitle => '利用最好的开源进行开发';

  @override
  String installationSlidesDevelopmentBody(Object DISTRO) {
    return '$DISTRO 是应用程序或 Web 开发、数据科学和 AI/ML 以及 DevOps 和管理的理想工作站。每个 $DISTRO 版本都包含最新的工具链，并支持所有主要的 IDE。';
  }

  @override
  String get installationSlidesCreativityTitle => '激发你的创造力';

  @override
  String installationSlidesCreativityBody(Object DISTRO) {
    return '如果您是动画师、设计师、视频创作者或游戏开发人员，$DISTRO 的开源和行业标准软件和应用程序的支持，让你能够轻松地将你的工作流程引入其中。';
  }

  @override
  String get installationSlidesGamingTitle => '非常适合游戏';

  @override
  String installationSlidesGamingBody(Object DISTRO) {
    return '$DISTRO 支持最新的 NVIDIA 和 Mesa 驱动程序以提高性能和兼容性。数以千计的 Windows 游戏可通过 Steam 等应用程序在 $DISTRO 上畅玩，无需额外配置。';
  }

  @override
  String get installationSlidesSecurityTitle => '私密且安全';

  @override
  String installationSlidesSecurityBody(Object DISTRO) {
    return '$DISTRO 提供了保持在线隐私和安全所需的所有工具。内置防火墙和 VPN 支持以及大量以隐私为中心的应用程序，可确保您完全控制自己的数据。';
  }

  @override
  String installationSlidesSecurityLts(Object DISTRO) {
    return '所有 $DISTRO LTS 版本都包含五年的安全补丁，如果有 Ubuntu Pro 订阅，则可以延长至十年。';
  }

  @override
  String get installationSlidesProductivityTitle => '激发您的生产力，让你事半功倍';

  @override
  String installationSlidesProductivityBody(Object DISTRO) {
    return '$DISTRO 桌面包含 LibreOffice，这是一套与 Microsoft Office 兼容的开源应用程序，用于文档，电子表格和演示文稿。流行的协作工具也可以使用。';
  }

  @override
  String get installationSlidesAccessibilityTitle => '每个人都可轻松使用';

  @override
  String installationSlidesAccessibilityBody(Object DISTRO) {
    return '$DISTRO 哲学核心是计算机是为每个人而存在的信仰。通过先进的辅助工具和更改语言、颜色和文本大小的选项，$DISTRO 让计算机使用变得简单 - 无论你是谁，身在何处。';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca屏幕阅读器';

  @override
  String get installationSlidesAccessibilityLanguages => '语言支持';

  @override
  String get installationSlidesSupportTitle => '帮助与支持';

  @override
  String installationSlidesSupportHeader(Object DISTRO) {
    return '$DISTRO 的官方文档可以通过在线方式或者在Dock中的帮助图标获取。';
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
  String get notEnoughDiskSpaceTitle => '空间不足';

  @override
  String notEnoughDiskSpaceUbuntu(Object DISTRO) {
    return '磁盘空间不足，无法安装 $DISTRO';
  }

  @override
  String get notEnoughDiskSpaceAvailable => '可用：';

  @override
  String get notEnoughDiskSpaceRequired => '必填：';

  @override
  String get refreshPageTitle => 'Update available';

  @override
  String refreshCurrent(Object snap, Object version) {
    return 'The current $snap version is $version.';
  }

  @override
  String refreshInstall(Object version) {
    return 'Update to version $version';
  }

  @override
  String refreshUpToDate(Object version) {
    return 'The current version $version is up-to-date.';
  }

  @override
  String refreshUpdating(Object snap) {
    return 'Updating $snap...';
  }

  @override
  String get refreshRestart => 'Please restart the installer.';

  @override
  String refreshSnapPrerequisites(Object snap) {
    return 'Ensuring $snap prerequisites...';
  }

  @override
  String refreshSnapRefresh(Object snap) {
    return 'Refreshing $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(Object snap) {
    return 'Checking $snap re-refresh...';
  }

  @override
  String refreshSnapPrepare(Object snap) {
    return 'Preparing $snap...';
  }

  @override
  String refreshSnapDownload(Object snap) {
    return 'Downloading $snap...';
  }

  @override
  String refreshSnapValidate(Object snap) {
    return 'Validating $snap...';
  }

  @override
  String refreshSnapMount(Object snap) {
    return 'Mounting $snap...';
  }

  @override
  String refreshSnapStopServices(Object snap) {
    return 'Stopping $snap services...';
  }

  @override
  String refreshSnapRemoveAliases(Object snap) {
    return 'Removing $snap aliases...';
  }

  @override
  String refreshSnapUnlink(Object snap) {
    return 'Unlinking $snap...';
  }

  @override
  String refreshSnapUpdateAssets(Object snap) {
    return 'Updating $snap assets...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(Object snap) {
    return 'Updating $snap kernel command line...';
  }

  @override
  String refreshSnapCopyData(Object snap) {
    return 'Copying $snap data...';
  }

  @override
  String refreshSnapSetupProfiles(Object snap) {
    return 'Setting up $snap security profiles...';
  }

  @override
  String refreshSnapLink(Object snap) {
    return 'Linking $snap...';
  }

  @override
  String refreshSnapAutoConnect(Object snap) {
    return 'Connecting $snap plugs and slots...';
  }

  @override
  String refreshSnapSetAutoAliases(Object snap) {
    return 'Setting automatic $snap aliases...';
  }

  @override
  String refreshSnapSetupAliases(Object snap) {
    return 'Setting up $snap aliases...';
  }

  @override
  String refreshSnapStartServices(Object snap) {
    return 'Starting $snap services...';
  }

  @override
  String refreshSnapCleanup(Object snap) {
    return 'Cleaning up $snap...';
  }

  @override
  String get recoveryKeyTitle => 'TPM recovery key';

  @override
  String get recoveryKeyCommand => 'You can access your recovery key after installation with the following command:';

  @override
  String recoveryKeyWarning(Object color) {
    return '<font color=\"$color\">Warning:</font> If you lose this security key, all data will be lost. If you need to, write down your key and keep it in a safe place elsewhere.';
  }
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class UbuntuBootstrapLocalizationsZhTw extends UbuntuBootstrapLocalizationsZh {
  UbuntuBootstrapLocalizationsZhTw(): super('zh_TW');

  @override
  String get appTitle => 'Ubuntu 桌面安裝程式';

  @override
  String windowTitle(Object RELEASE) {
    return '安裝 $RELEASE';
  }

  @override
  String get changeButtonText => '變更';

  @override
  String get quitButtonText => '離開安裝程式';

  @override
  String loadingPageTitle(Object DISTRO) {
    return '歡迎使用 $DISTRO';
  }

  @override
  String loadingHeader(Object DISTRO) {
    return '正在準備 $DISTRO…';
  }

  @override
  String welcomePageTitle(Object DISTRO) {
    return '試用或安裝 $DISTRO';
  }

  @override
  String get welcomeRepairOption => '修復系統';

  @override
  String get welcomeRepairDescription => '修復系統會重新安裝已安裝的軟體，而不會動到文件或是設定。';

  @override
  String welcomeTryOption(Object RELEASE) {
    return '試用 $RELEASE';
  }

  @override
  String welcomeTryDescription(Object RELEASE) {
    return '您可以試用 $RELEASE，而不會對您的電腦進行任何變動。';
  }

  @override
  String welcomeInstallOption(Object RELEASE) {
    return '安裝 $RELEASE';
  }

  @override
  String welcomeInstallDescription(Object RELEASE) {
    return '安裝 $RELEASE ，可與您目前的作業系統共存，或取代該系統，這不會耗費太多時間。';
  }

  @override
  String welcomeReleaseNotesLabel(Object url) {
    return '您也可以閱覽<a href=\"$url\">版本資訊</a>。';
  }

  @override
  String get rstTitle => '快速儲存技術 (RST) 已啟用';

  @override
  String get rstHeader => '關閉 RST 以繼續安裝';

  @override
  String get rstDescription => '本電腦已啟用 Intel 快速儲存技術 (Rapid Storage Technology)，為了繼續安裝 Ubuntu，請先在 Windows 下關閉該功能。';

  @override
  String rstInstructions(Object url) {
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
  String get showSecurityKey => '顯示安全密鑰';

  @override
  String get updatesOtherSoftwarePageTitle => '應用程式與更新';

  @override
  String get updatesOtherSoftwarePageDescription => '你首先想安裝些什麼程式？';

  @override
  String get fullInstallationTitle => '完整安裝';

  @override
  String get fullInstallationSubtitle => '可離線使用的辦公室套件、公用程式、網頁瀏覽器與遊戲。';

  @override
  String get minimalInstallationTitle => '預設安裝';

  @override
  String get minimalInstallationSubtitle => '僅安裝必要功能、網頁瀏覽器與公用程式。';

  @override
  String get otherOptions => '其它選項';

  @override
  String get installThirdPartyTitle => '安裝第三方軟體以使用顯示卡、無線網路等硬體，並提供額外的媒體格式支援';

  @override
  String get installThirdPartySubtitle => '這些軟體受到所付文件描述之授權條款約束，有部份為專有軟體。';

  @override
  String get installDriversTitle => '安裝第三方軟體以使用顯示卡、無線網路等硬體';

  @override
  String get installDriversSubtitle => '這些驅動程式受到所付文件描述之授權條款約束，均為專有軟體。';

  @override
  String get installCodecsTitle => '安裝第三方軟體以提供額外的媒體格式支援';

  @override
  String get installCodecsSubtitle => '這些軟體受到所付文件描述之授權條款約束，有部份為專有軟體。';

  @override
  String onBatteryWarning(Object color) {
    return '<font color=\"$color\">警告：</font>本電腦沒有外部電源供應。';
  }

  @override
  String get offlineWarning => '您目前已離線';

  @override
  String get chooseSecurityKeyTitle => '安全密鑰';

  @override
  String chooseSecurityKeyHeader(Object RELEASE) {
    return '硬碟加密可在您遺失電腦時保護您的檔案，每當您電腦啟動時它皆會要求您輸入安全密鑰。\n\n在 $RELEASE 外的任何檔案將不會受到此加密保護。';
  }

  @override
  String get chooseSecurityKeyHint => '選擇安全密鑰';

  @override
  String get chooseSecurityKeyConfirmHint => '確認安全密鑰';

  @override
  String get chooseSecurityKeyRequired => '安全密鑰為必填欄位';

  @override
  String get chooseSecurityKeyMismatch => '安全密鑰前後不符';

  @override
  String chooseSecurityKeyWarning(Object color) {
    return '<font color=\"$color\">警告：</font>若您遺失此安全密鑰，您將無法存取您的資料。若有必要，請將安全密鑰寫下，並保存在安全的地方。';
  }

  @override
  String get installationTypeTitle => '安裝類型';

  @override
  String installationTypeOSDetected(Object os) {
    return '本電腦目前已安裝 $os，請問您想要做什麼？';
  }

  @override
  String installationTypeDualOSDetected(Object os1, Object os2) {
    return '本電腦目前已安裝 $os1 與 $os2，請問您想要做什麼？';
  }

  @override
  String get installationTypeMultiOSDetected => '本電腦目前已安裝多個作業系統，請問您想要做什麼？';

  @override
  String get installationTypeNoOSDetected => '本電腦目前沒有被檢測到的作業系統。請問您想要做什麼？';

  @override
  String installationTypeErase(Object DISTRO) {
    return '清除硬碟並安裝 $DISTRO';
  }

  @override
  String installationTypeEraseWarning(Object color) {
    return '<font color=\"$color\">警告：</font>這將會刪除所有作業系統下的全部應用程式、文件、圖片、音樂等檔案。';
  }

  @override
  String get installationTypeAdvancedLabel => '進階功能…';

  @override
  String get installationTypeAdvancedTitle => '進階功能';

  @override
  String get installationTypeNone => '無';

  @override
  String get installationTypeNoneSelected => '未選擇';

  @override
  String installationTypeLVM(Object RELEASE) {
    return '在新的 $RELEASE 安裝中使用 LVM';
  }

  @override
  String get installationTypeLVMSelected => '已選用 LVM';

  @override
  String get installationTypeLVMEncryptionSelected => '已選用 LVM 及加密';

  @override
  String installationTypeEncrypt(Object RELEASE) {
    return '加密新安裝的 $RELEASE 以確保資訊安全';
  }

  @override
  String get installationTypeEncryptInfo => '在下一步中您需要輸入安全密鑰。';

  @override
  String get installationTypeZFS => '實驗功能：清除硬碟並使用 ZFS';

  @override
  String get installationTypeZFSSelected => '已選用 ZFS';

  @override
  String get installationTypeTPM => '實驗功能：使用 TPM 支援的全硬碟加密';

  @override
  String installationTypeTPMWarning(Object color, Object url) {
    return '<font color=\"$color\">警告：</font>本功能僅支援特定硬體配置，且升級 Ubuntu 版本後有失去支援的可能。請在啟用本功能前詳讀<a href=\"$url\">版本資訊</a>。';
  }

  @override
  String get installationTypeTPMSelected => '已選用 TPM 加密';

  @override
  String installationTypeReinstall(Object os) {
    return '清除 $os 並重新安裝';
  }

  @override
  String installationTypeReinstallWarning(Object color, Object os) {
    return '<font color=\"$color\">警告：</font>這將會刪除 $os 下的全部應用程式、文件、圖片、音樂等檔案。';
  }

  @override
  String installationTypeAlongside(Object product, Object os) {
    return '安裝 $product 與 $os 共存';
  }

  @override
  String installationTypeAlongsideDual(Object product, Object os1, Object os2) {
    return '安裝 $product 與 $os1 和 $os2 共存';
  }

  @override
  String installationTypeAlongsideMulti(Object product) {
    return '安裝 $product 與其它系統共存';
  }

  @override
  String installationTypeAlongsideUnknown(Object product) {
    return '安裝 $product 與其它分割區共存';
  }

  @override
  String get installationTypeAlongsideInfo => '應用程式、音樂等個人檔案將會被保留，您可以在每次電腦啟動時選擇其中一個作業系統。';

  @override
  String get installationTypeManual => '手動硬碟分割';

  @override
  String installationTypeManualInfo(Object DISTRO) {
    return '您可以手動建立與調整分割區，或是在 $DISTRO 上使用多個分割區';
  }

  @override
  String selectGuidedStoragePageTitle(Object DISTRO) {
    return '清除硬碟並安裝 $DISTRO';
  }

  @override
  String get selectGuidedStorageDropdownLabel => '選取硬碟：';

  @override
  String get selectGuidedStorageInfoLabel => '會使用整部硬碟：';

  @override
  String get selectGuidedStorageInstallNow => '立即安裝';

  @override
  String get installAlongsideSpaceDivider => '請拖曳下方的分隔棒來分配硬碟空間：';

  @override
  String installAlongsideHiddenPartitions(Object num, Object url) {
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
  String partitionFormatKeep(Object format) {
    return '保持 $format 格式';
  }

  @override
  String get partitionErase => '格式化分割區';

  @override
  String get partitionMountPointLabel => '掛載點：';

  @override
  String get confirmPageTitle => '準備開始安裝';

  @override
  String get confirmHeader => '若要繼續，下列修改將會寫入硬碟，您之後可以手動進行調整。';

  @override
  String get confirmDevicesTitle => '裝置';

  @override
  String get confirmPartitionsTitle => '分割區';

  @override
  String get confirmPartitionTables => '下列裝置的分割區將被修改：';

  @override
  String confirmPartitionTable(Object serial, Object path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => '下列分割區的修改將會套用：';

  @override
  String confirmPartitionResize(Object sysname, Object oldsize, Object newsize) {
    return '分割區 <b>$sysname</b> 的大小從 <b>$oldsize</b> 調整為 <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(Object sysname, Object format, Object mount) {
    return '分割區 <b>$sysname</b> 格式化為 <b>$format</b> 並掛載到 <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(Object sysname, Object format) {
    return '分割區 <b>$sysname</b> 格式化為 <b>$format</b>';
  }

  @override
  String confirmPartitionMount(Object sysname, Object mount) {
    return '分割區 <b>$sysname</b> 掛載到 <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(Object sysname) {
    return '分割區 <b>$sysname</b> 將被建立';
  }

  @override
  String get confirmInstallButton => '開始安裝';

  @override
  String get installationCompleteTitle => '安裝完成';

  @override
  String readyToUse(Object system) {
    return '**$system** 安裝完成，可以開始使用';
  }

  @override
  String restartInto(Object system) {
    return '重新開機進入 $system';
  }

  @override
  String restartWarning(Object RELEASE) {
    return '您現在可以繼續試用 $RELEASE，但直到電腦重啟前，在此系統上進行的變更與儲存的文件將不會被保存。';
  }

  @override
  String get shutdown => '關機';

  @override
  String get restartNow => '立即重新啟動';

  @override
  String get continueTesting => '繼續試用';

  @override
  String get bitlockerTitle => 'BitLocker 已啟用';

  @override
  String get bitlockerHeader => '請關閉 BitLocker 以繼續安裝';

  @override
  String bitlockerDescription(Object option) {
    return '本電腦已啟用 Windows BitLocker 加密技術，\n您必須使用 Windows 來建立磁區空間，或選擇「$option」以繼續。';
  }

  @override
  String bitlockerInstructions(Object url) {
    return '請用其他裝置掃描 QR Code 或造訪 <a href=\"https://$url\">$url</a> 以取得詳細步驟';
  }

  @override
  String get restartIntoWindows => '重啟進入 Windows';

  @override
  String get restartIntoWindowsTitle => '是否重啟進入 Windows？';

  @override
  String restartIntoWindowsDescription(Object DISTRO) {
    return '您是否要重啟您的電腦？您之後將要重啟進入 $DISTRO 的安裝程式才能完成安裝 $DISTRO。';
  }

  @override
  String installationSlidesTitle(Object RELEASE) {
    return '歡迎使用 $RELEASE';
  }

  @override
  String get installationSlidesAvailable => '可選用：';

  @override
  String get installationSlidesIncluded => '已安裝：';

  @override
  String get installationSlidesWelcomeTitle => '快速、免費、滿滿的新功能';

  @override
  String installationSlidesWelcomeHeader(Object DISTRO) {
    return '最新版本的 $DISTRO 讓使用電腦成為更加容易的體驗。';
  }

  @override
  String installationSlidesWelcomeBody(Object RELEASE) {
    return '無論您是開發者、創作者、玩家還是管理者，您都能在 $RELEASE 找到新的工具來提高生產力並增強使用體驗。';
  }

  @override
  String get installationSlidesSoftwareTitle => '包含您需要的所有應用程式';

  @override
  String installationSlidesSoftwareBody(Object DISTRO) {
    return '在 Ubuntu 軟體中心安裝、管理和更新所有應用程式，包括來自 Snap Store 和 $DISTRO 套件庫中的上千個應用程式。';
  }

  @override
  String get installationSlidesDevelopmentTitle => '站在開源的肩膀上進行開發';

  @override
  String installationSlidesDevelopmentBody(Object DISTRO) {
    return '$DISTRO 乃一個理想的工作站，適合研發應用程式、網站、資料科學、人工智慧/機器學習，以及進行 DevOps 和系統管理。每一個 $DISTRO 版本皆包含最新的工具鏈，並支援所有主流的開發環境 (IDE)。';
  }

  @override
  String get installationSlidesCreativityTitle => '激發您的創造力';

  @override
  String installationSlidesCreativityBody(Object DISTRO) {
    return '如果您是動畫師、設計師、影片創作者或遊戲開發者，您可以容易的代入您的工作流程到 $DISTRO，其有開源與行業標準的軟體與應用程式支援。';
  }

  @override
  String get installationSlidesGamingTitle => '玩遊戲，很可以';

  @override
  String installationSlidesGamingBody(Object DISTRO) {
    return '$DISTRO 為了增進效能與相容性，支援最新的 NVIDIA 與 Mesa 驅動程式。上千個 Windows 遊戲在 $DISTRO 上面無需另外配置，即可透過如 Steam 等的應用程式上遊玩。';
  }

  @override
  String get installationSlidesSecurityTitle => '隱私與安全';

  @override
  String installationSlidesSecurityBody(Object DISTRO) {
    return '$DISTRO 提供保持隱私與安全的所有工具，內建防火牆與 VPN 支援，以及一群以隱私為中心的應用程式來保障您有您資料的絕對掌控權。';
  }

  @override
  String installationSlidesSecurityLts(Object DISTRO) {
    return '所有 $DISTRO LTS 版本均提供五年的安全更新，若使用 Ubuntu Pro 訂閱可延長至十年。';
  }

  @override
  String get installationSlidesProductivityTitle => '強化您的生產力';

  @override
  String installationSlidesProductivityBody(Object DISTRO) {
    return '$DISTRO 桌面包含 LibreOffice，是與 Microsoft Office 相容，用於文件、試算表與簡報的開源應用程式，另有流行的協作工具可供使用。';
  }

  @override
  String get installationSlidesAccessibilityTitle => '人人均可使用';

  @override
  String installationSlidesAccessibilityBody(Object DISTRO) {
    return '$DISTRO 的中心思想是每個人都能夠使用電腦，$DISTRO 以先進的親和力工具以及提供變更語言、顏色、文字大小的選項，使得無論何人何地均可以輕鬆使用電腦。';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca 螢幕閱讀程式';

  @override
  String get installationSlidesAccessibilityLanguages => '語言支援';

  @override
  String get installationSlidesSupportTitle => '幫助與支援';

  @override
  String installationSlidesSupportHeader(Object DISTRO) {
    return '$DISTRO 的官方文件可以透過線上或在 Dock 中的「求助」圖示存取。';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu 含括了各式各樣的問題與回答，而 Ubuntu Discourse 則可為新手與有經驗的使用者提供指南與討論。';

  @override
  String get installationSlidesSupportEnterprise => 'Canonical 對企業用戶提供商業支援，以便在工作場所輕鬆、安全的安裝與管理 Ubuntu。';

  @override
  String get installationSlidesSupportResources => '有用資源：';

  @override
  String get installationSlidesSupportDocumentation => '官方文件';

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
  String get notEnoughDiskSpaceTitle => '可用空間不足';

  @override
  String notEnoughDiskSpaceUbuntu(Object DISTRO) {
    return '硬碟可用空間不足，無法安裝 $DISTRO';
  }

  @override
  String get notEnoughDiskSpaceAvailable => '可用：';

  @override
  String get notEnoughDiskSpaceRequired => '需要：';

  @override
  String get refreshPageTitle => '有可用的更新';

  @override
  String refreshCurrent(Object snap, Object version) {
    return '目前 $snap 的版本是 $version。';
  }

  @override
  String refreshInstall(Object version) {
    return '更新到版本 $version';
  }

  @override
  String refreshUpToDate(Object version) {
    return '目前的版本 $version 為最新版本。';
  }

  @override
  String refreshUpdating(Object snap) {
    return '正在更新 $snap…';
  }

  @override
  String get refreshRestart => '請重新啟動安裝程式。';

  @override
  String refreshSnapPrerequisites(Object snap) {
    return '正在確保 $snap 的相依需求…';
  }

  @override
  String refreshSnapRefresh(Object snap) {
    return '正在更新 $snap…';
  }

  @override
  String refreshSnapCheckRerefresh(Object snap) {
    return '正在檢查 $snap 是否需要再次更新…';
  }

  @override
  String refreshSnapPrepare(Object snap) {
    return '正在準備 $snap…';
  }

  @override
  String refreshSnapDownload(Object snap) {
    return '正在下載 $snap…';
  }

  @override
  String refreshSnapValidate(Object snap) {
    return '正在驗證 $snap…';
  }

  @override
  String refreshSnapMount(Object snap) {
    return '正在掛載 $snap…';
  }

  @override
  String refreshSnapStopServices(Object snap) {
    return '正在停止 $snap 的服務…';
  }

  @override
  String refreshSnapRemoveAliases(Object snap) {
    return '正在移除 $snap 的指令別名…';
  }

  @override
  String refreshSnapUnlink(Object snap) {
    return '正在解除 $snap 的連結…';
  }

  @override
  String refreshSnapUpdateAssets(Object snap) {
    return '正在更新 $snap 的附加檔案 (assets)…';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(Object snap) {
    return '正在更新 $snap 的核心指令 (kernel command line)…';
  }

  @override
  String refreshSnapCopyData(Object snap) {
    return '正在複製 $snap 的資料…';
  }

  @override
  String refreshSnapSetupProfiles(Object snap) {
    return '正在設定 $snap 的安全設定檔…';
  }

  @override
  String refreshSnapLink(Object snap) {
    return '正在連結 $snap…';
  }

  @override
  String refreshSnapAutoConnect(Object snap) {
    return '正在連接 $snap 的介面插頭 (plugs) 與插座 (slots)…';
  }

  @override
  String refreshSnapSetAutoAliases(Object snap) {
    return '正在設定 $snap 的自動指令別名…';
  }

  @override
  String refreshSnapSetupAliases(Object snap) {
    return '正在設定 $snap 的指令別名…';
  }

  @override
  String refreshSnapStartServices(Object snap) {
    return '正在啟動 $snap 的服務…';
  }

  @override
  String refreshSnapCleanup(Object snap) {
    return '正在清理 $snap…';
  }

  @override
  String get recoveryKeyTitle => 'TPM 復原密鑰';

  @override
  String get recoveryKeyCommand => '安裝後，您可以透過以下指令來取得您的復原密鑰：';

  @override
  String recoveryKeyWarning(Object color) {
    return '<font color=\"$color\">警告：</font>若您遺失此安全密鑰，您將無法存取您的資料。若有必要，請將安全密鑰寫下，並保存在安全的地方。';
  }
}
