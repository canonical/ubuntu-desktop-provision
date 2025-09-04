// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class UbuntuBootstrapLocalizationsJa extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Ubuntuデスクトップインストーラー';

  @override
  String windowTitle(String RELEASE) {
    return '$RELEASE をインストール';
  }

  @override
  String get autoinstallDirectTitle => 'Automated installation';

  @override
  String get autoinstallDirectHeader => 'Import autoinstall file';

  @override
  String get autoinstallDirectUrlLabel =>
      'You can enter the URL of an autoinstall file:';

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
  String get autoinstallDirectErrorNetworkTitle =>
      'Autoinstall file is not reachable';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Check the URL is correct, test your internet connection, or try later.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Invalid URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Check the URL is correct or select a local file.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Invalid autoinstall file';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Check the file or provide a different one.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Autoinstall file is not readable';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Check your permissions or provide a different file.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Unknown error';

  @override
  String get autoinstallTitle => 'インストールの種類';

  @override
  String autoinstallHeader(String DISTRO) {
    return '$DISTRO をインストールしますか？';
  }

  @override
  String get autoinstallInstructions =>
      'autoinstall.yamlのURLもしくはローカルファイルパスを入力:';

  @override
  String get autoinstallInteractiveOption => '対話式インストール';

  @override
  String get autoinstallInteractiveDescription =>
      'インストール中ガイドに従ってインストールしたいユーザー向けです。';

  @override
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription =>
      'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get autoinstallLandscapeOption => 'Automated with Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'For users in organizations that provide an autoinstall file via Landscape.';

  @override
  String get changeButtonText => '変更';

  @override
  String get quitButtonText => 'インストールを終了';

  @override
  String loadingPageTitle(String DISTRO) {
    return '$DISTRO へようこそ';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '$DISTROを準備しています…';
  }

  @override
  String get warningLabel => '警告:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return '$DISTROを試用またはインストール';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return '$DISTRO で何をしますか？';
  }

  @override
  String get tryOrInstallRepairOption => '修復インストール';

  @override
  String get tryOrInstallRepairDescription =>
      '修復はドキュメントや設定はそのままにして、インストールされているすべてのソフトウェアを再インストールします。';

  @override
  String tryOption(String RELEASE) {
    return '$RELEASE を試してみる';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'コンピュータに何の変更も加えることなく、$RELEASE を試すことができます。';
  }

  @override
  String installOption(String RELEASE) {
    return '$RELEASE をインストール';
  }

  @override
  String installDescription(String RELEASE) {
    return '現在の OS と一緒に (または代わりに) $RELEASE をインストールします。あまり時間がかからないはずです。';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return '<a href=\"$url\">リリースノート</a> もご覧いただくとよいかもしれません。';
  }

  @override
  String get rstTitle => 'RSTを検出';

  @override
  String get rstHeader => '続行するにはRSTをオフにしてください';

  @override
  String get rstDisable =>
      'Your computer uses Intel RST (Rapid Storage Technology). You can disable RST either in:';

  @override
  String get rstDisableWindows =>
      'Windows, if you are using a dual boot setup with Windows';

  @override
  String get rstDisableBios => 'The BIOS settings';

  @override
  String rstInstructions(String url) {
    return '手順は、別のデバイスでQRコードをスキャンするか、<a href=\"https://$url\">$url</a>をご確認ください。';
  }

  @override
  String get configureSecureBootTitle => 'セキュアブートの設定';

  @override
  String get configureSecureBootDescription =>
      'サードパーティのドライバーソフトウェアのインストールを選択しました。セキュアブートの無効化が必要です。\nここでセキュリティキーを設定し、システム再起動時にそのキーを入力してください。';

  @override
  String get configureSecureBootOption => 'セキュアブートを設定';

  @override
  String get chooseSecurityKey => 'セキュリティキーを決めてください';

  @override
  String get confirmSecurityKey => 'セキュリティキーをもう一度入力';

  @override
  String get dontInstallDriverSoftwareNow => '今はドライバーソフトウェアをインストールしない';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'あとで「ソフトウェアとアップデート」でインストールできます。';

  @override
  String get configureSecureBootSecurityKeyRequired => 'セキュリティキーが必要です';

  @override
  String get secureBootSecurityKeysDontMatch => 'セキュリティキーが一致しません';

  @override
  String get showSecurityKey => '表示';

  @override
  String get hideSecurityKey => '非表示';

  @override
  String get updatesOtherSoftwarePageTitle => 'アプリケーション';

  @override
  String get updatesOtherSoftwarePageDescription => '開始時にどのアプリをインストールしますか？';

  @override
  String get codecsAndDriversPageTitle => 'コンピューターを最適化';

  @override
  String get codecsAndDriversPageDescription =>
      '推奨するプロプライエタリなソフトウェアをインストールしますか？';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO は既定ではプロプライエタリなソフトウェアは含みません。追加のソフトウェアをインストールすると、コンピューターのパフォーマンスが改善するかもしれません。';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIAグラフィックカードを検出';

  @override
  String get codecsAndDriversNvidiaBody =>
      'NVIDIAグラフィックカードのパフォーマンスを引き出すために、追加のドライバーをインストールすることを強く推奨します。';

  @override
  String get fullInstallationTitle => '拡張選択';

  @override
  String get fullInstallationSubtitle =>
      'オフィスツール、ユーティリティにWebブラウザーを含み、オフラインに優しい選択です。';

  @override
  String get minimalInstallationTitle => '既定の選択';

  @override
  String get minimalInstallationSubtitle => '最小限のWebブラウザーと基本的なユーティリティのみです。';

  @override
  String get otherOptions => 'その他のオプション';

  @override
  String get installThirdPartyTitle =>
      'グラフィックスや Wi-Fi 機器のためのサードパーティ製ソフトウェア、および追加メディアフォーマットをインストールする';

  @override
  String get installThirdPartySubtitle =>
      'このソフトウェアの使用には、それぞれのドキュメントに記載されているライセンス規約が適用されます。一部のソフトウェアはプロプライエタリです。';

  @override
  String get installDriversTitle => 'グラフィックスとWi-Fi 機器用のサードパーティ製ソフトウェアをインストールする';

  @override
  String get installDriversSubtitle => 'NVIDIAドライバーなどを含みますが、それに限定しません';

  @override
  String get installCodecsTitle => '追加のメディアフォーマット用のサポートをダウンロードしてインストールする';

  @override
  String get installCodecsSubtitle => 'MP4、MOV対応などを含みますが、それに限定しません';

  @override
  String get batteryWarning => 'このコンピューターには電源ケーブルが接続されていません。';

  @override
  String get offlineWarning => '現在オフラインです';

  @override
  String get choosePassphraseHeader => 'パスフレーズを作成';

  @override
  String get choosePassphraseBody =>
      'ファイルを暗号化するパスフレーズが必要です。コンピューターの電源を入れるたびに毎回パスフレーズを入力します。';

  @override
  String get choosePassphraseInfoHeader => '確実にパスフレーズを保存してください';

  @override
  String get choosePassphraseInfoBody => 'もしパスフレーズを失うと、すべてのデータが消失します。';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Store your passphrase and recovery key somewhere safe';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'If you lose your passphrase, you will lose all your data. The passphrase does not replace the recovery key or your user password.';

  @override
  String get passphrasePageTitle => 'Encryption';

  @override
  String get passphrasePageHeaderPassphrase => 'Set an encryption passphrase';

  @override
  String get passphrasePageHeaderPin => 'Set an encryption PIN';

  @override
  String get passphrasePageBodyPassphrase =>
      'You will need to enter your passphrase every time you turn on your computer. This passphrase is different from your user password. You will be able to change it later, but not disable it. If you forget your passphrase, you can regain access to the disk by using the recovery key.';

  @override
  String get passphrasePageBodyPin =>
      'You will need to enter your PIN every time you turn on your computer. This PIN is different from your user password. You will be able to change it later, but not disable it. If you forget your PIN, you can regain access to the disk by using the recovery key.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Passphrase';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Confirm passphrase';

  @override
  String get passphrasePageRequiredPassphrase => 'A passphrase is required';

  @override
  String get passphrasePageMismatchPassphrase => 'The passphrases do not match';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Confirm PIN';

  @override
  String get passphrasePageRequiredPin => 'A PIN is required';

  @override
  String get passphrasePageMismatchPin => 'The PINs do not match';

  @override
  String get passphraseTypePassphraseTileTitle => 'Require a passphrase';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Most secure. You will need to enter a longer passphrase every time you turn on your computer.';

  @override
  String get passphraseTypePinTileTitle => 'Require a PIN';

  @override
  String get passphraseTypePinTileSubTitle =>
      'More secure. You will need to enter a numeric PIN every time you turn on your computer.';

  @override
  String get passphraseTypeNoneTileTitle => 'Unlock disk automatically';

  @override
  String get passphraseTypePageHeader => 'Additional security';

  @override
  String get passphraseTypePageBody =>
      'By default, the computer’s Trusted Platform Module (TPM) will unlock the disk during startup. You also have options to further protect your data.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Weak passphrase, make it longer or more complex';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Fair passphrase, make it longer or more complex for better security';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Strong passphrase';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'Weak PIN, make it longer or less predictable';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'Fair PIN, make it longer or less predictable for better security';

  @override
  String get passphrasePagePinEntropyOptimal => 'PIN is long enough';

  @override
  String get installationTypeTitle => 'ディスクのセットアップ';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'どうやって $DISTRO をインストールしますか？';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'コンピューターには $os がインストールされています。インストール方法を選択してください。';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'コンピューターには $os1 と $os2 がインストールされています。インストール方法を選択してください。';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'コンピューターには複数の OS がインストールされています。インストール方法を選択してください。';

  @override
  String get installationTypeNoOSDetected =>
      'コンピューターにインストールされた OS は見つかりませんでした。インストール方法を選択してください。';

  @override
  String installationTypeErase(String DISTRO) {
    return 'ディスクを削除して $DISTRO をインストールする';
  }

  @override
  String get installationTypeEraseInfo => '選択したディスクにクリーンな状態でインストールします。';

  @override
  String get installationTypeAdvancedLabel => '高度な機能…';

  @override
  String get installationTypeAdvancedTitle => '高度な機能';

  @override
  String get installationTypeExperimental => '実験的';

  @override
  String get installationTypeNone => 'なし';

  @override
  String get installationTypeNoneInfo =>
      'Standard file system without encryption.';

  @override
  String get installationTypeNoneSelected => '何も選択していません';

  @override
  String get installationTypeLVM => 'LVMを使用';

  @override
  String get installationTypeLVMSelected => 'LVM を選択';

  @override
  String get installationTypeLVMEncryption => 'LVMと暗号化を使用';

  @override
  String get installationTypeLVMEncryptionInfo =>
      'You will need to enter a passphrase every time you turn on your computer. This uses LUKS encryption with LVM.';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVMと暗号化を選択';

  @override
  String get installationTypeEncryptInfo => 'セキュリティキーは次のステップで選択します。';

  @override
  String get installationTypeZFS => 'ディスクを消去して ZFS を使用';

  @override
  String get installationTypeZFSEncryption => 'ディスクを消去してZFSを暗号化';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Native encryption with ZFS. You will need to enter a passphrase every time you turn on your computer.';

  @override
  String get installationTypeZFSSelected => 'ZFS を選択';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFSと暗号化を選択';

  @override
  String get installationTypeTPM => 'ハードウェアベースのディスク全体暗号化';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'これは実験的な機能です。 このハードウェアまたは将来の $DISTRO リリースでは動作しなくなるかもしれません。このオプションを選択する前に <a href=\"$url\">TPM暗号化</a> をよく読んでください。';
  }

  @override
  String get installationTypeTPMSelected => 'TPMを選択';

  @override
  String installationTypeReinstall(String os) {
    return '$os を削除して再インストール';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">警告</font> これにより、$os 上にあるプログラム、ドキュメント、写真、音楽、およびその他のファイルはすべて削除されます。';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return '$product を $os と共存させる';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return '$os1と$os2と並んで$productをインストールする';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'それと並んで$productをインストールする';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return '$productを他のパーティションと並べてインストールする';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'ファイルは削除されません。コンピュータを起動する際に、どのOSで起動するか選択できます。';
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
  String get installationTypeManual => '手動パーティショニング';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return '自分で $DISTRO をインストールするパーティションの作成やサイズ変更を行ったり、インストールに複数のパーティションを選択することもできます。';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'ディスクを削除して $DISTRO をインストール';
  }

  @override
  String get selectGuidedStorageInfo => '選択したディスクにクリーンな状態でインストールします。';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'ドライブを選択:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'パーティションを選択:';

  @override
  String get selectGuidedStorageInfoLabel => 'ディスク全体が使用されます。';

  @override
  String get selectGuidedStorageInstallNow => 'インストール';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'どこに $DISTRO をインストールするか選択';
  }

  @override
  String get installAlongsideSpaceDivider => '境界をドラッグしてディスク領域を割り当てます。';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$numの小さなパーティションは非表示になっています、<a href=\"$url\">高度なパーティションツール</a>で更に多くの機能を使ってください';
  }

  @override
  String get installAlongsideResizePartition => 'パーティションのサイズを変更する';

  @override
  String get installAlongsideAllocateSpace => 'ディスク領域の割り当て';

  @override
  String get installAlongsideFiles => 'ファイル';

  @override
  String get installAlongsidePartition => 'パーティション：';

  @override
  String get installAlongsideSize => 'サイズ：';

  @override
  String get installAlongsideAvailable => '利用可能：';

  @override
  String get allocateDiskSpace => '手動パーティショニング';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'マウントポイントは必ず\"/\"から開始してください';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'マウントポイントにスペースを入れることはできません';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format is not a supported filesystem for $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'デバイス';

  @override
  String get diskHeadersType => '種類';

  @override
  String get diskHeadersMountPoint => 'マウントポイント';

  @override
  String get diskHeadersSize => 'サイズ';

  @override
  String get diskHeadersUsed => '使用中';

  @override
  String get diskHeadersSystem => 'システム';

  @override
  String get diskHeadersFormat => 'フォーマット';

  @override
  String get freeDiskSpace => '空き領域';

  @override
  String get newPartitionTable => '新しいパーティションテーブルを作成する';

  @override
  String get newPartitionTableConfirmationTitle => '新しい空のパーティション';

  @override
  String get newPartitionTableConfirmationMessage =>
      'デバイスに対して新しいパーティションを作成すると、現在のパーティションがすべて削除されます。この操作は必要に応じて戻すことができます。';

  @override
  String get tooManyPrimaryPartitions => '基本パーティションが多すぎます';

  @override
  String get partitionLimitReached => '制限に達しました';

  @override
  String get bootLoaderDevice => 'ブートローダーをインストールするデバイスを選択';

  @override
  String get partitionCreateTitle => 'パーティションを作成';

  @override
  String get partitionEditTitle => 'パーティションを編集';

  @override
  String get partitionSizeLabel => 'サイズ：';

  @override
  String get partitionTypeLabel => '新しいパーティションの種類を選択してください。';

  @override
  String get partitionTypePrimary => '基本パーティション';

  @override
  String get partitionTypeLogical => '論理パーティション';

  @override
  String get partitionLocationLabel => '新しいパーティションの場所を選択してください。';

  @override
  String get partitionLocationBeginning => 'この領域の始点';

  @override
  String get partitionLocationEnd => 'この領域の終点';

  @override
  String get partitionFormatLabel => '使用方法：';

  @override
  String get partitionFormatNone => 'フォーマットしない';

  @override
  String partitionFormatKeep(String format) {
    return 'フォーマットを $format のままにする';
  }

  @override
  String get partitionErase => 'パーティションをフォーマット';

  @override
  String get partitionMountPointLabel => 'マウントポイント：';

  @override
  String get confirmPageTitle => 'インストールの準備完了';

  @override
  String get confirmHeader => 'これまでの選択を確認してください';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'なし';

  @override
  String get confirmDevicesTitle => 'デバイス';

  @override
  String get confirmEntryApplications => 'アプリケーション';

  @override
  String get confirmEntryDiskSetup => 'ディスクのセットアップ';

  @override
  String get confirmEntryDiskEncryption => 'ディスクの暗号化';

  @override
  String get confirmEntryInstallationDisk => 'インストールするディスク';

  @override
  String get confirmEntryProprietarySoftware => 'プロプライエタリなソフトウェア';

  @override
  String get confirmSectionGeneralTitle => '一般';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'セキュリティなど';

  @override
  String get confirmPartitionsTitle => 'パーティション';

  @override
  String get confirmPartitionTables => '以下のデバイスのパーティションテーブルが変更されます。';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'コーデック';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'コーデックとドライバー';

  @override
  String get confirmProprietarySoftwareDrivers => 'ドライバー';

  @override
  String get confirmInstallButton => 'インストール';

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
  String get installationCompleteTitle => 'インストールが完了しました';

  @override
  String readyToUse(String system) {
    return '$system のインストールは完了し、使い始める準備が整いました';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** がディスクへコピーされました';
  }

  @override
  String restartInto(String system) {
    return '再起動して $system を使い始める';
  }

  @override
  String get restartWarningBody =>
      'インストール完了のため再起動するか、試用を継続するかを選択してください。\nいかなる変更点も保存しないのでご注意ください。';

  @override
  String get rebootToConfigureWarning => 'インストール処理の継続のためコンピューターを再起動してください。';

  @override
  String get shutdown => 'シャットダウン';

  @override
  String get restartNow => '今すぐ再起動';

  @override
  String get continueTesting => '試用を継続する';

  @override
  String get bitlockerInfoTitle => 'BitLocker detected';

  @override
  String get bitlockerInfoDescription =>
      'One or more partitions are encrypted with BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'To install alongside Windows, disable BitLocker in Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows may request recovery keys on boot after installation.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'For instructions, visit the <a href=\"$url\">BitLocker guide</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'You may lose all your data without BitLocker recovery keys';

  @override
  String get restartComputer => 'Restart computer';

  @override
  String get restartComputerTitle => 'Restart computer?';

  @override
  String get restartIntoWindows => '再起動して Windows を使用';

  @override
  String get restartIntoWindowsTitle => 'Windowsに再起動しますか？';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return '本当にコンピュータを再起動しますか？ $DISTROのインストールを完了するためには、あとで再起動する必要があります。';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return '$RELEASEへようこそ';
  }

  @override
  String get installationSlidesAvailable => 'インストール可能：';

  @override
  String get installationSlidesIncluded => '含まれるアプリ：';

  @override
  String get installationSlidesWelcomeTitle => '高速で無料で、新機能が満載';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return '最新版の$DISTROでは、これまで以上にコンピューティングが容易になります。';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return '開発者・クリエーター・ゲーマー・管理者のいずれであっても、$RELEASEでは生産性を向上し、より良い体験を得られる新しいツールを見つけることができます。';
  }

  @override
  String get installationSlidesSoftwareTitle => '必要なアプリケーションを網羅';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Ubuntu Softwareを使えば、Snap Storeと$DISTROリポジトリの両方から、数多のアプリケーションをインストール・管理・更新できます。';
  }

  @override
  String get installationSlidesDevelopmentTitle => '最高のオープンソースを活用して開発';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTROはDevOpsや運用だけでなく、アプリケーションやウェブの開発、データサイエンス、AI/MLにも最適なワークステーションです。$DISTROのリリースごとに、最新のツールチェインやすべての主要なIDEが含まれています。';
  }

  @override
  String get installationSlidesCreativityTitle => '創造性の向上';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'アニメーター、デザイナー、動画クリエーターやゲーム開発者であれば、必要なワークフローを、オープンソースであり業界標準のソフトウェアやアプリケーションをサポートしている$DISTROに簡単に導入できます。';
  }

  @override
  String get installationSlidesGamingTitle => 'ゲームに最適';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTROは最新のNVIDIとMesaのドライバーをサポートし、パフォーマンスや互換性が向上しています。Steamのようなアプリケーションを利用することで、数多くのWindowsゲームを$DISTRO上で特別な設定なくプレイできます。';
  }

  @override
  String get installationSlidesSecurityTitle => 'プライバシーと安全性';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTROはプライベートで安全なオンライン環境を維持するために必要なすべてのツールを提供します。ファイアウォールやVPNをサポートし、プライバシーを重視したアプリケーションによって、データを完全に管理できます。';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'すべての$DISTRO LTSリリースは、5年間のセキュリティパッチが含まれており、Ubuntu Proサブスクリプションによって10年に延長できます。';
  }

  @override
  String get installationSlidesProductivityTitle => '生産性の向上';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return 'デスクトップ版の$DISTROには、Microsoft Office互換なオープンソースのドキュメント、表計算、プレゼンテーションのアプリケーションセットであるLibreOfficeが同梱されています。人気のコラボレーションツールも利用可能です。';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'すべての人へ';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '$DISTROの哲学の中心となっているのは、「あらゆる人のためのコンピューター」という信念です。高度なアクセシビリティツールや、言語・カラー・テキストサイズの変更といったオプションにより、$DISTROはあらゆる人に寄り添います。あなたが誰であっても、どこにいようとも。';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orcaスクリーンリーダー';

  @override
  String get installationSlidesAccessibilityLanguages => '言語サポート';

  @override
  String get installationSlidesSupportTitle => 'ヘルプとサポート';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return '$DISTROの公式ドキュメントは、オンラインおよびDock上のヘルプアイコンの両方から閲覧できます。';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntuではさまざまな質問と回答をカバーし、Ubuntu Discourseは新規ユーザーと経験豊富なユーザーのためのガイドと議論の場を提供します。';

  @override
  String get installationSlidesSupportEnterprise =>
      'Canonicalは、企業ユーザー向けに職場でUbuntuを安全に導入・管理するための商用サポートを提供しています。';

  @override
  String get installationSlidesSupportResources => '役に立つ情報：';

  @override
  String get installationSlidesSupportDocumentation => '公式ドキュメント';

  @override
  String get installationSlidesSupportUbuntuPro => 'Ubuntu Proで24時間365日サポート';

  @override
  String get nextSlideSemanticLabel => 'Next slide';

  @override
  String get previousSlideSemanticLabel => 'Previous slide';

  @override
  String get playSlideshowSemanticLabel => 'Play slideshow';

  @override
  String get pauseSlideshowSemanticLabel => 'Pause slideshow';

  @override
  String get toggleLogsSemanticLabel => 'Toggle install logs';

  @override
  String get copyingFiles => 'ファイルをコピーしています…';

  @override
  String get installingSystem => 'システムをインストールしています…';

  @override
  String get configuringSystem => 'システムを設定しています…';

  @override
  String get installationFailed => 'インストールに失敗しました';

  @override
  String get notEnoughDiskSpaceTitle => 'ディスクの空き容量が足りません';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return '$DISTROをインストールするのに十分なストレージ容量がありません';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return '選択したディスクは、$DISTRO をインストールするだけの空き容量が足りません。インストーラーを終了して空きスペースを増やすか、ほかのディスクを選択してください。';
  }

  @override
  String get notEnoughDiskSpaceAvailable => '利用可能：';

  @override
  String get notEnoughDiskSpaceRequired => '必要：';

  @override
  String get refreshPageTitle => 'アップデートがあります';

  @override
  String get refreshHeader => 'インストーラーのアップデートが適用できます';

  @override
  String get refreshUpdateNow => '今すぐアップデート';

  @override
  String get refreshInfo => '最新バージョンにアップデートすると、信頼性が改善し機能が増えます。';

  @override
  String get refreshReady => 'アップデートの準備完了';

  @override
  String refreshCurrent(String snap, String version) {
    return '現在の $snap バージョンは $versionです。';
  }

  @override
  String refreshInstall(String version) {
    return 'バージョン $version にアップデート';
  }

  @override
  String refreshUpToDate(String version) {
    return '現在のバージョン $version は最新です。';
  }

  @override
  String refreshUpdating(String snap) {
    return '$snap のアップデート中...';
  }

  @override
  String get refreshRestart => '続けるには、一旦閉じてもう一度インストーラーを起動してください';

  @override
  String get refreshCloseLabel => 'インストーラーを閉じる';

  @override
  String refreshSnapPrerequisites(String snap) {
    return '$snap に必要な前処理中...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return '$snap のリフレッシュ中...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return '$snap の再リフレッシュを確認中...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '$snap の準備中...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return '$snap のダウンロード中...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return '$snap の確認中...';
  }

  @override
  String refreshSnapMount(String snap) {
    return '$snap のマウント中...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return '$snap サービスを停止中...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return '$snap のエイリアスを削除中...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return '$snap のリンクを削除中...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return '$snap 関連のアップデート中...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return '$snap のカーネルコマンドラインをアップデート中...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return '$snap のデータをコピー中...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return '$snap のセキュリティプロファイルを設定中...';
  }

  @override
  String refreshSnapLink(String snap) {
    return '$snap のリンク中...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return '$snap のプラグとスロットに接続中...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return '自動 $snap エイリアスを設定中...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return '$snap エイリアスのセットアップ中...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return '$snap サービスを開始中...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '$snap のクリーンアップ中...';
  }

  @override
  String get recoveryKeyTitle => 'TPMリカバリーキー';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Important';

  @override
  String get recoveryKeyHeader => 'Save your recovery key';

  @override
  String get recoveryKeyInfoHeader =>
      'You may lose all your data without a recovery key';

  @override
  String get recoveryKeyTextFieldLabel => 'Recovery key';

  @override
  String get recoveryKeyStorageAdvice =>
      'You will need to provide this recovery key if decryption fails during startup. Without the key, you will lose access to all your data. Save it somewhere safe, such as a password manager.';

  @override
  String get recoveryKeyConfirmation =>
      'I saved my recovery key somewhere safe';

  @override
  String get recoveryKeyLinkLabel => 'Learn more';

  @override
  String get recoveryKeySaveToFileLabel => 'Save to file';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Show QR code';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Desktop - Recovery key';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Scan the QR code to copy the recovery key and save it somewhere safe, such as a password manager. You can also take a photo for later use.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Copied to clipboard';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Recovery key file not saved';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Recovery key file cannot be saved in a temporary location';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Unknown error';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'You do not have permission to write to that folder. Try a different location or use another method.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Try a different location, such as a removable drive, or use another method.';

  @override
  String get recoveryKeyFilePickerTitle => 'Save recovery key file';

  @override
  String get recoveryKeyFilePickerFilter => 'Text files';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Scan the QR code or enter the code below at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Automated installation';

  @override
  String get landscapeHeader => 'Log in to Landscape';

  @override
  String get landscapeDomainHeader => 'Enter Landscape domain (FQDN)';

  @override
  String get landscapeDomainHintText => 'Landscape domain (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Provide your organization\'s Landscape domain to log in and fetch an autoinstall file. You can get the FQDN from your IT support.';

  @override
  String get landscapeDomainTextField => 'Landscape domain (FQDN)';

  @override
  String get next => 'Next';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Invalid domain, please check or contact your IT support';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Connect to the internet to continue';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Internet is needed to fetch the autoinstall file from Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'Code expired, please try again';

  @override
  String get landscapeLoginFailedWarning => 'Login failed, please try again';

  @override
  String get landscapeErrorPageTitle =>
      'Automated install is not available for your account';

  @override
  String get landscapeErrorPageBody =>
      'Contact your IT support or try a different installation option.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Error code: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu will install with the configuration provided by your organization';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'You can review the autoinstall file imported from Landscape below.';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get errorIconSemanticLabel => 'Error';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
