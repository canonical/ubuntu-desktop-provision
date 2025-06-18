// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class UbuntuBootstrapLocalizationsTr extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Ubuntu Desktop Yükleyici';

  @override
  String windowTitle(String RELEASE) {
    return '$RELEASE Yükle';
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
  String get autoinstallDirectFileButtonLabel => 'Dosya seç...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Dosyayı temizle';

  @override
  String get autoinstallDirectFilePickerTitle => 'Dosya seçin';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML dosyaları';

  @override
  String get autoinstallDirectImportButtonLabel => 'İçeri aktar';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'Autoinstall file is not reachable';

  @override
  String get autoinstallDirectErrorNetworkBody => 'Check the URL is correct, test your internet connection, or try later.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Geçersiz URL';

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
  String get autoinstallTitle => 'Yükleme türü';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'How would you like to install $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Enter the autoinstall.yaml URL or local file path:';

  @override
  String get autoinstallInteractiveOption => 'Interactive installation';

  @override
  String get autoinstallInteractiveDescription => 'For users who want to be guided step by step through the installation.';

  @override
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get autoinstallLandscapeOption => 'Automated with Landscape';

  @override
  String get autoinstallLandscapeDescription => 'For users in organizations that provide an autoinstall file via Landscape.';

  @override
  String get changeButtonText => 'Değiştir';

  @override
  String get quitButtonText => 'Kurulumdan Çık';

  @override
  String loadingPageTitle(String DISTRO) {
    return '$DISTRO dağıtımına hoş geldiniz';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '$DISTRO hazırlanıyor…';
  }

  @override
  String get warningLabel => 'Uyarı:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return '$DISTRO dene veya kur';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'What do you want to do with $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Kurulumu tamir et';

  @override
  String get tryOrInstallRepairDescription => 'Tamir etme seçeneği, tüm yazılımlarınızı tekrardan kuracak ve belgeleriniz ile ayarlarınıza dokunmayacaktır.';

  @override
  String tryOption(String RELEASE) {
    return '$RELEASE Dene';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Bilgisayarınızda hiç bir değişiklik yapmadan $RELEASE deneyebilirsiniz.';
  }

  @override
  String installOption(String RELEASE) {
    return '$RELEASE Kur';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Mevcut işletim sisteminizin yanına (ya da yerine) $RELEASE kur. Çok uzun sürmeyecektir.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return '<a href=\"$url\">Sürüm notlarını</a> okumak isteyebilirsiniz.';
  }

  @override
  String get rstTitle => 'RST etkin';

  @override
  String get rstHeader => 'Devam etmek için RST\'yi kapatın';

  @override
  String get rstDisable => 'Your computer uses Intel RST (Rapid Storage Technology). You can disable RST either in:';

  @override
  String get rstDisableWindows => 'Windows, if you are using a dual boot setup with Windows';

  @override
  String get rstDisableBios => 'The BIOS settings';

  @override
  String rstInstructions(String url) {
    return 'Talimatlar için QR kodunu başka bir cihazda tarayın veya ziyaret edin: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Güvenli Önyüklemeyi Yapılandır';

  @override
  String get configureSecureBootDescription => 'Üçüncü parti sürücüleri kurmayı seçtiniz. Bu, Güvenli Önyüklemeyi kapatmanızı gerektirir.\nBunu yapabilmek için, şimdi bir güvenlik anahtarı seçmeli ve sistem yeniden başlatıldığında bu anahtarı girmelisiniz.';

  @override
  String get configureSecureBootOption => 'Güvenli Önyüklemeyi Yapılandır';

  @override
  String get chooseSecurityKey => 'Güvenlik anahtarı seçin';

  @override
  String get confirmSecurityKey => 'Güvenlik anahtarını onaylayın';

  @override
  String get dontInstallDriverSoftwareNow => 'Şimdilik sürücü yazılımını kurma';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Daha sonra Yazılımlar ve Güncellemeler uygulamasından kurabilirsiniz.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Güvenlik anahtarı gereklidir';

  @override
  String get secureBootSecurityKeysDontMatch => 'Güvenlik anahtarları uyuşmamaktadır';

  @override
  String get showSecurityKey => 'Güvenlik anahtarını göster';

  @override
  String get hideSecurityKey => 'Gizle';

  @override
  String get updatesOtherSoftwarePageTitle => 'Uygulamalar ve güncellemeler';

  @override
  String get updatesOtherSoftwarePageDescription => 'Başlangıç olarak hangi uygulamaları kurmak istersiniz?';

  @override
  String get codecsAndDriversPageTitle => 'Bilgisayarınızı optimize edin';

  @override
  String get codecsAndDriversPageDescription => 'Install recommended proprietary software?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO ships with no proprietary software by default. Installing additional software may improve your computer\'s performance.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA grafik kartı tespit edildi';

  @override
  String get codecsAndDriversNvidiaBody => 'NVIDIA grafik kartlarının en iyi performansı için ek sürücülerin yüklenmesi tavsiye edilir.';

  @override
  String get fullInstallationTitle => 'Tam kurulum';

  @override
  String get fullInstallationSubtitle => 'Ofis araçları, yardımcı araçlar, web tarayıcısı ve oyunlardan oluşan çevrimdışı dostu bir seçim.';

  @override
  String get minimalInstallationTitle => 'Öntanımlı kurulum';

  @override
  String get minimalInstallationSubtitle => 'Yalnızca gerekli olanlar, web tarayıcısı ve temel yardımcı araçlar.';

  @override
  String get otherOptions => 'Diğer seçenekler';

  @override
  String get installThirdPartyTitle => 'Grafikler ve Wi-Fi donanımı için üçüncü taraf yazılımların yanı sıra ek medya biçimlerini de kur';

  @override
  String get installThirdPartySubtitle => 'Bu yazılım, belgeleriyle birlikte verilen lisans koşullarına tabidir. Bazıları tescillidir.';

  @override
  String get installDriversTitle => 'Grafik ve Wi-Fi donanımı için üçüncü taraf yazılımları kur';

  @override
  String get installDriversSubtitle => 'Bu sürücüler, belgeleriyle birlikte verilen lisans koşullarına tabidir. Sahipli ürünlerdir.';

  @override
  String get installCodecsTitle => 'Ek ortam biçimleri desteğini indir ve kur';

  @override
  String get installCodecsSubtitle => 'Bu yazılım, belgeleriyle birlikte verilen lisans koşullarına tabidir. Bazıları sahiplidir.';

  @override
  String get batteryWarning => 'The computer is not plugged in to a power source.';

  @override
  String get offlineWarning => 'Şu anda çevrimdışısın';

  @override
  String get choosePassphraseHeader => 'Create a passphrase';

  @override
  String get choosePassphraseBody => 'You will need to enter your passphrase every time you turn on your computer. This passphrase is different from your user password.';

  @override
  String get choosePassphraseInfoHeader => 'Make sure to save your passphrase';

  @override
  String get choosePassphraseInfoBody => 'If you lose it, you will lose all your data.';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Store your passphrase and recovery key somewhere safe';

  @override
  String get chooseOptionalPassphraseInfoBody => 'If you lose your passphrase, you will lose all your data. The passphrase does not replace the recovery key or your user password.';

  @override
  String get passphrasePageTitle => 'Encryption';

  @override
  String get passphrasePageHeaderPassphrase => 'Set an encryption passphrase';

  @override
  String get passphrasePageHeaderPin => 'Set an encryption PIN';

  @override
  String get passphrasePageBodyPassphrase => 'You will need to enter your passphrase every time you turn on your computer. This passphrase is different from your user password. You will be able to change it later, but not disable it. If you forget your passphrase, you can regain access to the disk by using the recovery key.';

  @override
  String get passphrasePageBodyPin => 'You will need to enter your PIN every time you turn on your computer. This PIN is different from your user password. You will be able to change it later, but not disable it. If you forget your PIN, you can regain access to the disk by using the recovery key.';

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
  String get passphraseTypePassphraseTileSubTitle => 'Most secure. You will need to enter a longer passphrase every time you turn on your computer.';

  @override
  String get passphraseTypePinTileTitle => 'Require a PIN';

  @override
  String get passphraseTypePinTileSubTitle => 'More secure. You will need to enter a numeric PIN every time you turn on your computer.';

  @override
  String get passphraseTypeNoneTileTitle => 'Unlock disk automatically';

  @override
  String get passphraseTypePageHeader => 'Encryption PIN or passphrase';

  @override
  String get passphraseTypePageBody => 'By default, the computer’s Trusted Platform Module (TPM) will unlock the disk during startup. However, you can also require a PIN or a passphrase to further protect your data.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin => 'Weak passphrase, make it longer or more complex';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal => 'Fair passphrase, make it longer or more complex for better security';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Strong passphrase';

  @override
  String get passphrasePagePinEntropyBelowMin => 'Weak PIN, make it longer or less predictable';

  @override
  String get passphrasePagePinEntropyBelowOptimal => 'Fair PIN, make it longer or less predictable for better security';

  @override
  String get passphrasePagePinEntropyOptimal => 'PIN is long enough';

  @override
  String get installationTypeTitle => 'Kurulum türü';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'How do you want to install $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Bu bilgisayarda şu anda $os var. Ne yapmak istersiniz?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Bu bilgisayarda şu anda $os1 ve $os2 var. Ne yapmak istersiniz?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Bu bilgisayar şu an birden fazla işletim sistemi var. Ne yapmak istersiniz?';

  @override
  String get installationTypeNoOSDetected => 'Bu bilgisayarda herhangi bir işletim sistemi tespit edilmedi. Ne yapmak istersiniz?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Diski sil ve $DISTRO kur';
  }

  @override
  String get installationTypeEraseInfo => 'All data and partitions on the disk will be erased, including operating systems.';

  @override
  String get installationTypeAdvancedLabel => 'Gelişmiş özellikler...';

  @override
  String get installationTypeAdvancedTitle => 'İleri seviye özellikler';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Hiçbiri';

  @override
  String get installationTypeNoneInfo => 'Standard file system without encryption.';

  @override
  String get installationTypeNoneSelected => 'Hiçbiri seçilmedi';

  @override
  String get installationTypeLVM => 'Use LVM without encryption';

  @override
  String get installationTypeLVMSelected => 'LVM seçildi';

  @override
  String get installationTypeLVMEncryption => 'Encrypt with a passphrase';

  @override
  String get installationTypeLVMEncryptionInfo => 'You will need to enter a passphrase every time you turn on your computer. This uses LUKS encryption with LVM.';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM ve şifreleme seçildi';

  @override
  String get installationTypeEncryptInfo => 'Bir sonraki adımda güvenlik anahtarı seçeceksiniz.';

  @override
  String get installationTypeZFS => 'DENEYSEL: Diski sil ve ZFS kullan';

  @override
  String get installationTypeZFSEncryption => 'Encrypt with a passphrase using ZFS';

  @override
  String get installationTypeZFSEncryptionInfo => 'Native encryption with ZFS. You will need to enter a passphrase every time you turn on your computer.';

  @override
  String get installationTypeZFSSelected => 'ZFS seçildi';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS and encryption selected';

  @override
  String get installationTypeTPM => 'DENEYSEL: Donanım destekli tam disk şifrelemeyi etkinleştir';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Read about TPM encryption</a> before you choose this option. This may not work with your hardware or future $DISTRO releases.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM seçildi';

  @override
  String installationTypeReinstall(String os) {
    return '$os sil ve yeniden kur';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Uyarı:</font> Bu, tüm $os programlarını, belgeleri, fotoğrafları, müzikleri ve diğer dosyaları siler.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return '$product işletims sistemini $os yanına kur';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return '$product işletim sistemini $os1 ve $os2 yanına kur';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return '$product işletim sistemini onların yanına kur';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return '$product işletim sistemini diğer bölümlerin yanına kur';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Belgeler, müzik ve diğer kişisel dosyalar korunacak. Bilgisayar her başlatıldığında hangi işletim sistemini istediğinizi seçebilirsiniz.';
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
  String get installationTypeManual => 'Elle bölümlendirme';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Bölümleri kendiniz oluşturabilir veya yeniden boyutlandırabilir ya da $DISTRO için birden çok bölüm seçebilirsiniz';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Diski sil ve $DISTRO kur';
  }

  @override
  String get selectGuidedStorageInfo => 'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Select drive:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Select partition:';

  @override
  String get selectGuidedStorageInfoLabel => 'Bütün disk kullanılacaktır:';

  @override
  String get selectGuidedStorageInstallNow => 'Şimdi kur';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Choose where to install $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'Aşağıdaki ayırıcıyı sürükleyerek sürücü alanı ayır:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num küçük bölüm gizli, daha fazla denetim için <a href=\"$url\">gelişmiş bölümleme aracını</a> kullanın';
  }

  @override
  String get installAlongsideResizePartition => 'Bölümü yeniden boyutlandır';

  @override
  String get installAlongsideAllocateSpace => 'Alan ayır';

  @override
  String get installAlongsideFiles => 'Dosyalar';

  @override
  String get installAlongsidePartition => 'Bölüm:';

  @override
  String get installAlongsideSize => 'Boyut:';

  @override
  String get installAlongsideAvailable => 'Kullanılabilir:';

  @override
  String get allocateDiskSpace => 'Elle biçimlendirme';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Bağlama noktaları \"/\" ile başlamalıdır';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Bağlama noktaları boşluk içeremez';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(String mountpoint, String format) {
    return '$format is not a supported filesystem for $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Cihaz';

  @override
  String get diskHeadersType => 'Tür';

  @override
  String get diskHeadersMountPoint => 'Bağlama noktası';

  @override
  String get diskHeadersSize => 'Boyut';

  @override
  String get diskHeadersUsed => 'Kullanılan';

  @override
  String get diskHeadersSystem => 'Sistem';

  @override
  String get diskHeadersFormat => 'Biçim';

  @override
  String get freeDiskSpace => 'Boş alan';

  @override
  String get newPartitionTable => 'Yeni bölüm tablosu';

  @override
  String get newPartitionTableConfirmationTitle => 'Yeni boş bölüm';

  @override
  String get newPartitionTableConfirmationMessage => 'Cihazın tamamında yeni bir bölüm tablosu oluşturmak var olan bölümleri siler. Bu işlem gerekirse geri alınabilir.';

  @override
  String get tooManyPrimaryPartitions => 'Çok fazla birincil bölüm';

  @override
  String get partitionLimitReached => 'Sınıra ulaşıldı';

  @override
  String get bootLoaderDevice => 'Önyükleyici kurulumu yapılacak cihaz';

  @override
  String get partitionCreateTitle => 'Bölüm oluştur';

  @override
  String get partitionEditTitle => 'Bölüm düzenle';

  @override
  String get partitionSizeLabel => 'Boyut:';

  @override
  String get partitionTypeLabel => 'Yeni bölümün türü:';

  @override
  String get partitionTypePrimary => 'Birincil';

  @override
  String get partitionTypeLogical => 'Mantıksal';

  @override
  String get partitionLocationLabel => 'Yeni bölümün konumu:';

  @override
  String get partitionLocationBeginning => 'Bu alanın başlangıcı';

  @override
  String get partitionLocationEnd => 'Bu alanın sonu';

  @override
  String get partitionFormatLabel => 'Kullanılan:';

  @override
  String get partitionFormatNone => 'Biçimlendirilmemiş bırak';

  @override
  String partitionFormatKeep(String format) {
    return '$format olarak biçimlendirilmiş bırak';
  }

  @override
  String get partitionErase => 'Bölümü biçimlendir';

  @override
  String get partitionMountPointLabel => 'Bağlama noktası:';

  @override
  String get confirmPageTitle => 'Kuruluma hazır';

  @override
  String get confirmHeader => 'Devam ederseniz, aşağıda listelenen değişiklikler disklere yazılacak. Daha fazla değişikliği elle yapabileceksiniz.';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Hiçbiri';

  @override
  String get confirmDevicesTitle => 'Aygıtlar';

  @override
  String get confirmEntryApplications => 'Uygulamalar';

  @override
  String get confirmEntryDiskSetup => 'Type of installation';

  @override
  String get confirmEntryDiskEncryption => 'Disk şifreleme';

  @override
  String get confirmEntryInstallationDisk => 'Kurulum diski';

  @override
  String get confirmEntryProprietarySoftware => 'Proprietary software';

  @override
  String get confirmSectionGeneralTitle => 'Genel';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Güvenlik ve daha fazlası';

  @override
  String get confirmPartitionsTitle => 'Disk bölümleri';

  @override
  String get confirmPartitionTables => 'Aşağıdaki cihazların bölüm tabloları değiştirildi:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Kod çözücüler';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Kod çözücüler & sürücüler';

  @override
  String get confirmProprietarySoftwareDrivers => 'Sürücüler';

  @override
  String get confirmInstallButton => 'Kur';

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
  String get installationCompleteTitle => 'Kurulum tamamlandı';

  @override
  String readyToUse(String system) {
    return '$system kuruldu ve kullanıma hazır';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return '$system ile yeniden başlat';
  }

  @override
  String get restartWarningBody => 'Restart to complete the installation or continue testing.\nAny changes you make will not be saved.';

  @override
  String get rebootToConfigureWarning => 'You have to restart the computer to continue the installation process.';

  @override
  String get shutdown => 'Kapat';

  @override
  String get restartNow => 'Şimdi yeniden başlat';

  @override
  String get continueTesting => 'Test etmeye devam et';

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
  String get restartIntoWindows => 'Windows\'a yeniden başlat';

  @override
  String get restartIntoWindowsTitle => 'Windows\'a yeniden başlatılsın mı?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Bilgisayarınızı yeniden başlatmak istediğinizden emin misiniz? $DISTRO kurulumunu tamamlamak için $DISTRO kurulumunu daha sonra yeniden başlatmanız gerekecektir.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return '$RELEASE sürümüne hoş geldiniz';
  }

  @override
  String get installationSlidesAvailable => 'Mevcut:';

  @override
  String get installationSlidesIncluded => 'Dahil:';

  @override
  String get installationSlidesWelcomeTitle => 'Hızlı, ücretsiz ve yeni özelliklerle dolu';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return '$DISTRO\'nun son sürümü işleri hiç olmadığı kadar kolaylaştırır.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Geliştirici, içerik üreticisi, sanatçı, oyuncu ya da sistem yöneticisi olun fark etmez, $RELEASE sürümünde verimliliğinizi arttıracak ve deneyiminizi iyileştirecek yeni araçlar bulacaksınız.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'İhtiyacınız olan tüm uygulamalar';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Snap Store ve $DISTRO arşivindeki binlerce uygulama dahil tüm uygulamaları Ubuntu Software ile kurun, yönetin ve güncelleyin.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Açık kaynağın en iyisi ile geliştir';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO uygulama veya web geliştirme, veri bilimi, yapay zeka ve makine öğrenmesi yanı sıra sistem yönetimi ve DevOps için ideal iş istasyonudur. Her $DISTRO sürümü en güncel toolchainleri içerir ve tüm popüler IDE\'leri destekler.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Yaratıcılığınızı zenginleştirin';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Bir animatör, tasarımcı, video üreticisi ya da oyun geliştiricisiyseniz, açık kaynak ve endüstri standardı yazılım ve uygulama desteği ile iş akışlarınızı $DISTRO dağıtımına taşımak çok kolay.';
  }

  @override
  String get installationSlidesGamingTitle => 'Oyun için harika';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO performansı ve uyumluluğu artırmak için en yeni NVIDIA ve Mesa sürücülerini destekler. Binlerce Windows oyunu, Steam gibi uygulamalar aracılığıyla $DISTRO üstünde, ek yapılandırma gerektirmeden harika bir şekilde oynatılır.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Özel ve güvenli';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO çevrimiçi ortamda gizli ve güvende kalmak için ihtiyacınız olan tüm araçları sağlar. Yerleşik güvenlik duvarı ve VPN desteğinin yanı sıra verilerinizin tam kontrolünü sağlamak için bir dizi gizlilik merkezli uygulama da sağlar.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Tüm $DISTRO LTS sürümleri, Ubuntu Pro aboneliği ile on yıla kadar uzanan beş yıllık güvenlik yaması ile birlikte gelir.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Verimliliğinizi artırın';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Masaüstü, belgeler, elektronik tablolar ve sunumlar için Microsoft Office uyumlu açık kaynak uygulamaları paketi olan LibreOffice\'i içerir. Popüler işbirliği araçları da mevcuttur.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Herkes için erişim';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '$DISTRO felsefesinin temelinde bilgisayarın herkes için olduğu inancı yatmaktadır. Gelişmiş erişilebilirlik araçları ve dili, renkleri ve metin boyutunu değiştirme seçenekleriyle $DISTRO, kim ve nerede olursanız olun bilgisayar kullanmayı kolaylaştırır.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca Ekran Okuyucu';

  @override
  String get installationSlidesAccessibilityLanguages => 'Dil desteği';

  @override
  String get installationSlidesSupportTitle => 'Yardım ve Destek';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Resmi $DISTRO belgelerine hem çevrimiçi olarak hem de rıhtımdaki Yardım simgesi aracılığıyla ulaşabilirsiniz.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ubuntu\'ya Sor çeşitli soru ve yanıtlarını kapsar. Ubuntu Discourse yeni ve deneyimli kullanıcılar için kılavuzlar ve tartışmalar sunar.';

  @override
  String get installationSlidesSupportEnterprise => 'Kurumsal kullanıcılar için Canonical, Ubuntu\'nun işyerinde güvenli bir şekilde kurulmasını ve yönetilmesini kolaylaştırmak için ticari destek sağlar.';

  @override
  String get installationSlidesSupportResources => 'Yararlı kaynaklar:';

  @override
  String get installationSlidesSupportDocumentation => 'Resmi belgelendirme';

  @override
  String get installationSlidesSupportUbuntuPro => 'Ubuntu Pro ile kurumsal sınıf 7/24 destek';

  @override
  String get copyingFiles => 'Dosyalar kopyalanıyor…';

  @override
  String get installingSystem => 'Sistem kuruluyor…';

  @override
  String get configuringSystem => 'Sistem yapılandırılıyor…';

  @override
  String get installationFailed => 'Kurulum başarısız oldu';

  @override
  String get notEnoughDiskSpaceTitle => 'Yeterli alan yok';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return '$DISTRO kurmak için yeterli disk alanı yok';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'The selected disk does not have enough disk space to install $DISTRO. Quit the installer to make space available or select another disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Kullanılabilir:';

  @override
  String get notEnoughDiskSpaceRequired => 'Gerekli:';

  @override
  String get refreshPageTitle => 'Güncelleme var';

  @override
  String get refreshHeader => 'An update is available for the installer';

  @override
  String get refreshUpdateNow => 'Şimdi güncelle';

  @override
  String get refreshInfo => 'Update to the latest version for improved reliability and more features.';

  @override
  String get refreshReady => 'Güncelleme hazır';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Geçerli $snap sürümü: $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Şu sürüme güncelle: $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Geçerli sürüm $version güncel.';
  }

  @override
  String refreshUpdating(String snap) {
    return '$snap güncelleniyor...';
  }

  @override
  String get refreshRestart => 'Kurucuyu yeniden başlatın.';

  @override
  String get refreshCloseLabel => 'Yükleyiciyi kapat';

  @override
  String refreshSnapPrerequisites(String snap) {
    return '$snap ön koşulları sağlanıyor...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return '$snap yenileniyor...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return '$snap yeniden yenilemesi denetleniyor...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '$snap hazırlanıyor...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return '$snap indiriliyor...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return '$snap doğrulanıyor...';
  }

  @override
  String refreshSnapMount(String snap) {
    return '$snap bağlanıyor...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return '$snap hizmetleri durduruluyor...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return '$snap takma adları kaldırılıyor...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return '$snap bağlantısı kaldırılıyor...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return '$snap varlıkları güncelleniyor...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return '$snap çekirdek komut satırı güncelleniyor...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return '$snap verileri kopyalanıyor...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return '$snap güvenlik profilleri ayarlanıyor...';
  }

  @override
  String refreshSnapLink(String snap) {
    return '$snap bağlanıyor...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return '$snap fişleri ve yuvaları bağlanıyor...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Otomatik $snap takma adları ayarlanıyor...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return '$snap takma adları ayarlanıyor...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return '$snap hizmetleri başlatılıyor...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '$snap temizleniyor...';
  }

  @override
  String get recoveryKeyTitle => 'TPM kurtarma anahtarı';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Important';

  @override
  String get recoveryKeyHeader => 'Save your recovery key';

  @override
  String get recoveryKeyInfoHeader => 'You may lose all your data without a recovery key';

  @override
  String get recoveryKeyTextFieldLabel => 'Recovery key';

  @override
  String get recoveryKeyStorageAdvice => 'You will need to provide this recovery key if decryption fails during startup. Without the key, you will lose access to all your data. Save it somewhere safe, such as a password manager.';

  @override
  String get recoveryKeyConfirmation => 'I saved my recovery key somewhere safe';

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
  String get recoveryKeyQrDialogBody => 'Scan the QR code to copy the recovery key and save it somewhere safe, such as a password manager. You can also take a photo for later use.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Copied to clipboard';

  @override
  String get recoveryKeyExceptionFileSystemTitle => 'Recovery key file not saved';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle => 'Recovery key file cannot be saved in a temporary location';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Unknown error';

  @override
  String get recoveryKeyExceptionFileSystemBody => 'You do not have permission to write to that folder. Try a different location or use another method.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody => 'Try a different location, such as a removable drive, or use another method.';

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

  @override
  String get landscapeErrorPageTitle => 'Automated install is not available for your account';

  @override
  String get landscapeErrorPageBody => 'Contact your IT support or try a different installation option.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Error code: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle => 'Ubuntu will install with the configuration provided by your organization';

  @override
  String get landscapeConfirmPageSuccessInfoContent => 'You can review the autoinstall file imported from Landscape below.';
}
