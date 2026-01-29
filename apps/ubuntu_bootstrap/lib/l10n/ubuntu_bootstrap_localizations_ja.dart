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
  String get autoinstallDirectTitle => '自動インストール';

  @override
  String get autoinstallDirectHeader => '自動インストールファイルのインポート';

  @override
  String get autoinstallDirectUrlLabel => '自動インストールファイルのURLを入力してください:';

  @override
  String get autoinstallDirectFileLabel => 'またはファイルを選択してください:';

  @override
  String get autoinstallDirectFileButtonLabel => 'ファイルの選択...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'ファイルの選択解除';

  @override
  String get autoinstallDirectFilePickerTitle => 'ファイルの選択';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAMLファイル';

  @override
  String get autoinstallDirectImportButtonLabel => 'インポート';

  @override
  String get autoinstallDirectErrorNetworkTitle => '自動インストールファイルに到達できません';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'URLが正しいか確認するか、インターネット接続をテストするか、後ほど試してください。';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => '無効なURL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'URLあるいはローカルファイルの選択が正しいか確認してください。';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => '無効な自動インストールファイル';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'ファイルを確認するか別なものを選択してください。';

  @override
  String get autoinstallDirectErrorFileSystemTitle => '自動インストールファイルが読み込めません';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'パーミッションを確認するか別なものを選択してください。';

  @override
  String get autoinstallDirectErrorUnkownTitle => '不明なエラー';

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
  String get autoinstallDirectOption => '自動インストールファイルによる自動化';

  @override
  String get autoinstallDirectDescription =>
      '一貫性と再現性を確保したシステムセットアップのためautoinstall.yamlを使用する上級ユーザー向けです。';

  @override
  String get autoinstallLandscapeOption => 'Landscapeによる自動化';

  @override
  String get autoinstallLandscapeDescription =>
      'Landscape経由で自動インストールファイルが提供されている、組織に所属しているユーザー向けです。';

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
    return '現在の OS と共存して (または代わりに) $RELEASE をインストールします。あまり時間がかからないはずです。';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return '<a href=\"$url\">リリースノート</a> もご覧いただくとよいかもしれません。';
  }

  @override
  String get rstTitle => 'RSTを検出';

  @override
  String get rstHeader => '続行するにはRSTを無効にしてください';

  @override
  String get rstDisable =>
      'このPCではIntel RST (Rapid Storage Technology)を使用しています。RSTを無効にしてください:';

  @override
  String get rstDisableWindows => 'Windowsでデュアルブートしている場合';

  @override
  String get rstDisableBios => 'BIOSの設定';

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
      'コンピューターの電源を入れるたびに毎回パスフレーズを入力します。パスフレーズはユーザーのパスワードとは異なります。';

  @override
  String get choosePassphraseInfoHeader => '確実にパスフレーズを保存してください';

  @override
  String get choosePassphraseInfoBody => 'もし失くすと、すべてのデータを失います。';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'パスフレーズとリカバリーキーをどこか安全なところに保存';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'パスフレーズを失うと、すべてのデータを失います。パスフレーズはリカバリーキーやユーザーのパスワードで代替することはできません。';

  @override
  String get passphrasePageTitle => '暗号化';

  @override
  String get passphrasePageHeaderPassphrase => '暗号化パスフレーズを設定';

  @override
  String get passphrasePageHeaderPin => '暗号化PINを設定';

  @override
  String get passphrasePageBodyPassphrase =>
      'PCの電源を入れるたびにパスフレーズを入力する必要があります。パスフレーズはユーザーのパスワードとは異なります。後ほど変更はできますが、無効にはできません。パスフレーズを忘れてしまうと、リカバリーキーを使用してディスクにアクセスすることになります。';

  @override
  String get passphrasePageBodyPin =>
      'PCの電源を入れるたびにPINを入力する必要があります。PINはユーザーのパスワードとは異なります。後ほど変更はできますが、無効にはできません。PINを忘れてしまうと、リカバリーキーを使用してディスクにアクセスすることになります。';

  @override
  String get passphrasePageChoosePassphraseHint => 'パスフレーズ';

  @override
  String get passphrasePageConfirmPassphraseHint => 'パスフレーズの確認';

  @override
  String get passphrasePageRequiredPassphrase => 'パスフレーズを入力してください';

  @override
  String get passphrasePageMismatchPassphrase => 'パスフレーズが一致しません';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'PINの確認';

  @override
  String get passphrasePageRequiredPin => 'PINを入力してください';

  @override
  String get passphrasePageMismatchPin => 'PINが一致しません';

  @override
  String get passphraseTypePassphraseTileTitle => 'パスフレーズが必要です';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      '最も安全です。PCの電源を入れるたびに長いパスフレーズを入力することになります。';

  @override
  String get passphraseTypePinTileTitle => 'PINが必要です';

  @override
  String get passphraseTypePinTileSubTitle =>
      'かなり安全です。PCの電源を入れるたびにPIN番号を入力することになります。';

  @override
  String get passphraseTypeNoneTileTitle => 'ディスクの暗号化を自動解除';

  @override
  String get passphraseTypePageHeader => '追加のセキュリティ';

  @override
  String get passphraseTypePageBody =>
      '既定では、このPCのTPMが起動時にディスクの暗号化を解除します。データ保護のため追加のオプションもあります。';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      '弱いパスフレーズ。長くするかもっと複雑にしてください';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      '妥当なパスフレーズ。長くするかもっと複雑にするとさらにセキュアになります';

  @override
  String get passphrasePagePassphraseEntropyOptimal => '強いパスフレーズ';

  @override
  String get passphrasePagePinEntropyBelowMin => '弱いPIN。長くするか、予想しにくいものにしてください';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      '妥当なPIN。長くするか予想しにくいものにするとさらにセキュアになります';

  @override
  String get passphrasePagePinEntropyOptimal => 'PINは充分に長いです';

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
  String get installationTypeEraseInfo => 'OSを含むすべてのデータとパーティションは削除されます。';

  @override
  String get installationTypeAdvancedLabel => '高度な機能を表示…';

  @override
  String get installationTypeAdvancedTitle => '暗号化とファイルシステム';

  @override
  String get installationTypeExperimental => '実験的';

  @override
  String get installationTypeNone => '暗号化しない';

  @override
  String get installationTypeNoneInfo => '暗号化しない標準的なファイルシステムです。';

  @override
  String get installationTypeNoneSelected => '何も選択していません';

  @override
  String get installationTypeLVM => '暗号化なしでLVMを使用';

  @override
  String get installationTypeLVMSelected => 'LVM を選択';

  @override
  String get installationTypeLVMEncryption => 'パスフレーズで暗号化';

  @override
  String get installationTypeLVMEncryptionInfo =>
      'PCの電源を入れるたびにパスフレーズの入力が必要です。LVMのLUKS暗号化を使用します。';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVMと暗号化を選択';

  @override
  String get installationTypeEncryptInfo => 'セキュリティキーは次のステップで選択します。';

  @override
  String get installationTypeZFS => '暗号化なしでZFS を使用';

  @override
  String get installationTypeZFSEncryption => 'ZFSを使用してパスフレーズによる暗号化';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'ZFSによるネイティブな暗号化です。PCの電源を入れるたびにパスフレーズの入力が必要です。';

  @override
  String get installationTypeZFSSelected => 'ZFS を選択';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFSと暗号化を選択';

  @override
  String get installationTypeTPM => 'ハードウェアベースのディスク暗号化を使用';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'このオプションを選択する前に <a href=\"$url\">TPM暗号化</a> をよく読んでください。このハードウェアまたは将来の $DISTRO リリースでは動作しなくなるかもしれません。';
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
    return '$os1と$os2を共存して$productをインストールする';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return '既存のOSと共存して$productをインストールする';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return '$productを他のパーティションと共存してインストールする';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return '$productをインストールするため、サイズ変更と余白作成を実施するパーティションを選択してください。コンピュータを起動する際に、どのOSで起動するか選択できます。';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return '$os を削除し、 $product をインストール';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return '既存の $os 用のファイルとデータはすべて恒久的に削除されます。';
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
    return '$mountpoint の $format はサポートされていないファイルシステムです';
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
  String get confirmEntryDiskSetup => 'インストールの種類';

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
  String get confirmTableErased => '消去';

  @override
  String get confirmTableUnchanged => '変更なし';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return '$oldsize から $newsize へサイズ変更';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return '$mountpoint 用を $format で作成とフォーマット';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return '$mountpoint 用を $format でフォーマット済';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return '$mountpoint 用';
  }

  @override
  String confirmTableFormatted(String format) {
    return '$format でフォーマット済';
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
  String get bitlockerInfoTitle => 'BitLocker検出';

  @override
  String get bitlockerInfoDescription => 'BitLockerで暗号化されたパーティションがあります。';

  @override
  String get bitlockerInfoDisable =>
      'Windowsと共存してインストールするには、WindowsのBitLockerを解除してください。';

  @override
  String get bitlockerInfoRecovery =>
      'Windowsがインストール後の起動時にリカバリーキーを要求するかもしれません。';

  @override
  String bitlockerInfoInstructions(String url) {
    return '詳細な説明は <a href=\"$url\">BitLockerガイド</a> をご覧ください。';
  }

  @override
  String get bitlockerWarningTitle =>
      'BitLockerリカバリーキーがないとすべてのデータを失うことになるかもしれません';

  @override
  String get restartComputer => 'PCの再起動';

  @override
  String get restartComputerTitle => 'PCを再起動しますか？';

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
  String get nextSlideSemanticLabel => '次のスライド';

  @override
  String get previousSlideSemanticLabel => '前のスライド';

  @override
  String get playSlideshowSemanticLabel => 'スライドショーの再生';

  @override
  String get pauseSlideshowSemanticLabel => 'スライドショーの停止';

  @override
  String get toggleLogsSemanticLabel => 'インストールログの表示切替';

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
  String get recoveryKeyTitle => 'リカバリーキー';

  @override
  String get recoveryKeyTitleBadgeLabel => '重要';

  @override
  String get recoveryKeyHeader => 'リカバリーキーを保存してください';

  @override
  String get recoveryKeyInfoHeader => 'リカバリーキーがないとすべてのデータを失うことになるかもしれません';

  @override
  String get recoveryKeyTextFieldLabel => 'リカバリーキー';

  @override
  String get recoveryKeyStorageAdvice =>
      '起動時に暗号化の解除に失敗した場合、このリカバリーキーを使用することがあります。このキーを失くすと、すべてのデータにアクセスできなくなります。キーはパスワードマネージャーなどどこか安全なところに保存してください。';

  @override
  String get recoveryKeyConfirmation => 'どこか安全なところにリカバリーキーを保存します';

  @override
  String get recoveryKeyLinkLabel => '追加情報';

  @override
  String get recoveryKeySaveToFileLabel => 'ファイルに保存';

  @override
  String get recoveryKeyShowQrCodeLabel => 'QRコードを表示';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO デスクトップ - リカバリーキー';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'QRコードをスキャンしてリカバリーキーをコピーし、パスワードマネージャーなどどこか安全なところに保存してください。後のために写真を撮っておくのもいいでしょう。';

  @override
  String get recoveryKeyClipboardNotifiaction => 'クリップボードにコピー';

  @override
  String get recoveryKeyExceptionFileSystemTitle => 'リカバリーキーファイルが保存できませんでした';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'リカバリーキーファイルが一時場所に保存できませんでした';

  @override
  String get recoveryKeyExceptionUnknownTitle => '不明なエラー';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'フォルダーに保存する権限がありません。別の場所にするか、他の方法にしてください。';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'USBメモリーなど別の場所に保存するか、他の方法にしてください。';

  @override
  String get recoveryKeyFilePickerTitle => 'リカバリーキーファイルの保存';

  @override
  String get recoveryKeyFilePickerFilter => 'テキストファイル';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'QRコードをスキャンするか、 <a href=\"https://$url\"> にあるコードを入力してください';
  }

  @override
  String get landscapePageTitle => '自動インストール';

  @override
  String get landscapeHeader => 'Landscapeにログイン';

  @override
  String get landscapeDomainHeader => 'Landscapeのドメイン(FQDN)を入力してください';

  @override
  String get landscapeDomainHintText => 'Landscapeドメイン(FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'ログインと自動インストールファイルの取得のため、組織のLandscapeドメインを入力してください。ITサポートからFQDNを取得できます。';

  @override
  String get landscapeDomainTextField => 'Landscapeドメイン(FQDN)';

  @override
  String get next => '次';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      '無効なドメインです。再確認するか、ITサポートに連絡してください';

  @override
  String get landscapeDomainNoInternetTitleWarning => '継続するにはインターネット接続が必要です';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Landscapeから自動インストールファイルを取得するのにインターネットが必要です';

  @override
  String get landscapeCodeExpiredWarning => 'コードの期限が切れました。やり直してください';

  @override
  String get landscapeLoginFailedWarning => 'ログインに失敗しました。やり直してください';

  @override
  String get landscapeErrorPageTitle => 'このアカウントでは自動インストールは実行できません';

  @override
  String get landscapeErrorPageBody => 'ITサポートに連絡するか、他のインストールオプションにしてください。';

  @override
  String landscapeErrorPageCode(String code) {
    return 'エラーコード: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntuは組織に提供された設定でインストールされます';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Landscapeから取り込んだ自動インストールファイルは以下でプレビューできます。';

  @override
  String get successIconSemanticLabel => '成功';

  @override
  String get errorIconSemanticLabel => 'エラー';

  @override
  String get closeIconSemanticLabel => '閉じる';

  @override
  String get maximizeIconSemanticLabel => '最大化';

  @override
  String get minimizeIconSemanticLabel => '最小化';

  @override
  String get tpmActionPageTitle =>
      'Hardware-backed encryption could not be enabled';

  @override
  String get tpmActionBadgeLabel => 'Action required';

  @override
  String get tpmActionDetailsLabel => 'Technical details';

  @override
  String get tpmActionConfirmLabel => 'Confirm';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return 'Solution $n: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel => 'Link to documentation';

  @override
  String get tpmActionErrorSupportLabel =>
      'Try the solutions below, contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorKindInternal => 'Internal';

  @override
  String get tpmActionErrorKindShutdownRequired => 'Shutdown Required';

  @override
  String get tpmActionErrorKindRebootRequired => 'Reboot Required';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'Unexpected Action';

  @override
  String get tpmActionErrorKindMissingArgument => 'Missing Argument';

  @override
  String get tpmActionErrorKindInvalidArgument => 'Invalid Argument';

  @override
  String get tpmActionErrorKindActionFailed => 'Action Failed';

  @override
  String get tpmActionErrorKindRunningInVm =>
      'The current environment is a virtual machine.';

  @override
  String get tpmActionErrorKindSystemNotEfi =>
      'This computer is using older firmware (legacy BIOS) that is not compatible with this encryption method.';

  @override
  String get tpmActionErrorKindEfiVariableAccess =>
      'There is an issue with this computer\'s firmware settings.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'This computer does not have the required security hardware (TPM 2.0) for this encryption method.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'This computer\'s TPM is disabled.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'This computer\'s TPM is already in use by another system or application.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'This computer\'s TPM is currently locked.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'This computer\'s TPM does not have enough storage available.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'This computer is not compatible with hardware-backed encryption.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'UEFI debugging is enabled';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'This computer is missing a required security feature (DMA protection).';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'This computer is missing a required security feature (kernel IOMMU).';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'There is an issue with this computer\'s security settings.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'There is software running at startup that may prevent a secure connection with the computer\'s TPM.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'Absolute Persistence Module is enabled in this computer.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Secure boot is disabled in this computer or is not configured in \"deployed\" mode.';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Some of the certificates verifying components in this computer are outdated or use weak protection.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'This computer is using a manual allowlist to verify software at startup.';

  @override
  String get tpmActionErrorKindAddonDriversPresent => 'Addon Drivers Present';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'There is an issue with this computer\'s TPM.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'There is an issue with this computer\'s firmware.';

  @override
  String get tpmActionFixActionReboot => 'Restart';

  @override
  String get tpmActionFixActionShutdown => 'Power off';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Restart to firmware settings';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'Enable DMA protection manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'Enable secure boot manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'Enable DMA protection manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'Enable PCR banks manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'Enable TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Disable Absolute Persistence Module manually';

  @override
  String get tpmActionFixActionContactOem => 'Contact OEM';

  @override
  String get tpmActionFixActionContactOsVendor => 'Contact OS Vendor';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware => 'Enable TPM on restart';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Enable and clear TPM on restart';

  @override
  String get tpmActionFixActionClearTpmViaFirmware => 'Clear TPM on restart';

  @override
  String get tpmActionFixActionClearTpm => 'Clear TPM';

  @override
  String get tpmActionFixActionProceed => 'Ignore';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Restart the computer to complete previous actions.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Restarting the computer may fix the issue.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Power off the computer to complete previous actions.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'You can do this in you computer\'s firmware settings.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'You may be able to do this in you computer\'s firmware settings. Check the documentation of the CPU vendor for guidance.';

  @override
  String get tpmActionFixActionProceedDescription =>
      'Ignoring the issue may result in a less secure installation.';

  @override
  String get tpmActionRestartLabel => 'Restart';

  @override
  String get tpmActionRestartAndEnableTpmLabel => 'Restart and enable TPM';

  @override
  String get tpmActionRestartAndClearTpmLabel => 'Restart and clear TPM';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'Ignore and continue';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'Clearing the TPM erases all encryption keys';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'You will lose access to all data in encrypted drives for which you do not have recovery keys. It will also break other features that depend on the TPM, such as authentication and certificates.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'I understand the consequences of clearing the TPM';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'You may be asked to confirm this action on restart.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'You will then have to retry installation from scratch.';

  @override
  String get tpmActionErrorTitle => 'This solution failed';

  @override
  String get tpmActionErrorDescription =>
      'Try a different solution or contact IT support';

  @override
  String get manualPartitioningWarningBody =>
      'Try something else. You may also <a href=\"\">send an error report</a>.';
}
