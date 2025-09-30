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
  String get autoinstallDirectTitle => 'Otomatik kurulum';

  @override
  String get autoinstallDirectHeader => 'Otomatik kurulum dosyasını içe aktar';

  @override
  String get autoinstallDirectUrlLabel =>
      'Otomatik kurulum dosyasının URL\'sini girebilirsiniz:';

  @override
  String get autoinstallDirectFileLabel => 'Veya yerel bir dosya seçin:';

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
  String get autoinstallDirectErrorNetworkTitle =>
      'Otomatik kurulum dosyasına ulaşılamıyor';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'URL\'nin doğru olduğundan emin olun, internet bağlantınızı test edin veya daha sonra deneyin.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Geçersiz URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'URL\'nin doğru olduğundan emin olun veya yerel bir dosya seçin.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Geçersiz otomatik kurulum dosyası';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Dosyayı kontrol edin veya farklı bir dosya sağlayın.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Otomatik yükleme dosyası okunamıyor';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'İzinlerinizi kontrol edin veya farklı bir dosya sağlayın.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Bilinmeyen hata';

  @override
  String get autoinstallTitle => 'Yükleme türü';

  @override
  String autoinstallHeader(String DISTRO) {
    return '$DISTRO\'yu nasıl kurmak istersiniz?';
  }

  @override
  String get autoinstallInstructions =>
      'autoinstall.yaml URL\'sini veya yerel dosya yolunu girin:';

  @override
  String get autoinstallInteractiveOption => 'Etkileşimli kurulum';

  @override
  String get autoinstallInteractiveDescription =>
      'Kurulumda adım adım rehberlik almak isteyen kullanıcılar için.';

  @override
  String get autoinstallDirectOption =>
      'Otomatik kurulum dosyasıyla otomatikleştirildi';

  @override
  String get autoinstallDirectDescription =>
      'Tutarlı ve tekrarlanabilir sistem kurulumları için autoinstall.yaml dosyasına sahip ileri düzey kullanıcılar için.';

  @override
  String get autoinstallLandscapeOption => 'Landscape ile Otomatikleştirilmiş';

  @override
  String get autoinstallLandscapeDescription =>
      'Landscape aracılığıyla otomatik kurulum dosyası sağlayan kuruluşlardaki kullanıcılar için.';

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
    return '$DISTRO ile ne yapmak istiyorsunuz?';
  }

  @override
  String get tryOrInstallRepairOption => 'Kurulumu tamir et';

  @override
  String get tryOrInstallRepairDescription =>
      'Onarma, belgelere veya ayarlara dokunmadan tüm yüklü yazılımları yeniden yükleyecektir.';

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
  String get rstTitle => 'RST tespit edildi';

  @override
  String get rstHeader =>
      'Kuruluma devam etmek için RST\'yi devre dışı bırakmalısınız';

  @override
  String get rstDisable =>
      'Bilgisayarınız Intel RST (Hızlı Depolama Teknolojisi) kullanıyor. RST\'yi şu şekilde devre dışı bırakabilirsiniz:';

  @override
  String get rstDisableWindows =>
      'Windows, Windows ile çift önyükleme kurulumu kullanıyorsanız';

  @override
  String get rstDisableBios => 'BIOS ayarları';

  @override
  String rstInstructions(String url) {
    return 'Talimatlar için QR kodunu başka bir cihazda tarayın veya ziyaret edin: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Güvenli Önyüklemeyi Yapılandır';

  @override
  String get configureSecureBootDescription =>
      'Üçüncü parti sürücüleri kurmayı seçtiniz. Bu, Güvenli Önyüklemeyi kapatmanızı gerektirir.\nBunu yapabilmek için, şimdi bir güvenlik anahtarı seçmeli ve sistem yeniden başlatıldığında bu anahtarı girmelisiniz.';

  @override
  String get configureSecureBootOption => 'Güvenli Önyüklemeyi Yapılandır';

  @override
  String get chooseSecurityKey => 'Güvenlik anahtarı seçin';

  @override
  String get confirmSecurityKey => 'Güvenlik anahtarını onaylayın';

  @override
  String get dontInstallDriverSoftwareNow => 'Şimdilik sürücü yazılımını kurma';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Daha sonra Yazılımlar ve Güncellemeler uygulamasından kurabilirsiniz.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Güvenlik anahtarı gereklidir';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'Güvenlik anahtarları uyuşmamaktadır';

  @override
  String get showSecurityKey => 'Göster';

  @override
  String get hideSecurityKey => 'Gizle';

  @override
  String get updatesOtherSoftwarePageTitle => 'Uygulamalar';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Başlangıç olarak hangi uygulamaları kurmak istersiniz?';

  @override
  String get codecsAndDriversPageTitle => 'Bilgisayarınızı optimize edin';

  @override
  String get codecsAndDriversPageDescription =>
      'Önerilen özel yazılım kurulsun mu?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO varsayılan olarak herhangi bir özel yazılımla birlikte gelmez. Ek yazılım yüklemek bilgisayarınızın performansını artırabilir.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA grafik kartı tespit edildi';

  @override
  String get codecsAndDriversNvidiaBody =>
      'NVIDIA ekran kartlarının en iyi performansı için ek sürücülerin yüklenmesi şiddetle önerilir.';

  @override
  String get fullInstallationTitle => 'Genişletilmiş seçim';

  @override
  String get fullInstallationSubtitle =>
      'Ofis araçları, yardımcı programlar ve web tarayıcısının çevrimdışı kullanıma uygun bir seçkisi.';

  @override
  String get minimalInstallationTitle => 'Varsayılan seçim';

  @override
  String get minimalInstallationSubtitle =>
      'Sadece temel gereksinimler, web tarayıcısı ve temel yardımcı programlar.';

  @override
  String get otherOptions => 'Diğer seçenekler';

  @override
  String get installThirdPartyTitle =>
      'Grafik ve Wi-Fi donanımı için üçüncü taraf yazılımların yanı sıra ek medya formatlarını yükleyin';

  @override
  String get installThirdPartySubtitle =>
      'Bu yazılım, belgelerinde yer alan lisans koşullarına tabidir. Bazıları tescillidir.';

  @override
  String get installDriversTitle =>
      'Grafik ve Wi-Fi donanımı için üçüncü taraf yazılımları yükleyin';

  @override
  String get installDriversSubtitle =>
      'NVIDIA sürücüleri ve benzerleri dahil ancak bunlarla sınırlı olmamak üzere';

  @override
  String get installCodecsTitle =>
      'Ek medya biçimleri için desteği indirin ve yükleyin';

  @override
  String get installCodecsSubtitle =>
      'MP3, MP4, MOV ve benzeri formatlar dahil ancak bunlarla sınırlı olmamak üzere';

  @override
  String get batteryWarning => 'Bilgisayar bir güç kaynağına bağlı değil.';

  @override
  String get offlineWarning => 'Şu anda çevrimdışısınız';

  @override
  String get choosePassphraseHeader => 'Bir parola oluşturun';

  @override
  String get choosePassphraseBody =>
      'Bilgisayarınızı her açtığınızda parolanızı girmeniz gerekecektir. Bu parola, kullanıcı parolanızdan farklıdır.';

  @override
  String get choosePassphraseInfoHeader =>
      'Parolanızı kaydettiğinizden emin olun';

  @override
  String get choosePassphraseInfoBody =>
      'Kaybederseniz tüm verilerinizi kaybedersiniz.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Parolanızı ve kurtarma anahtarınızı güvenli bir yerde saklayın';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Parolanızı kaybederseniz, tüm verilerinizi kaybedersiniz. Parola, kurtarma anahtarınızın veya kullanıcı parolanızın yerine geçmez.';

  @override
  String get passphrasePageTitle => 'Şifreleme';

  @override
  String get passphrasePageHeaderPassphrase =>
      'Bir şifreleme parolası ayarlayın';

  @override
  String get passphrasePageHeaderPin => 'Şifreleme PIN\'i ayarlayın';

  @override
  String get passphrasePageBodyPassphrase =>
      'Bilgisayarınızı her açtığınızda parolanızı girmeniz gerekecektir. Bu parola, kullanıcı parolanızdan farklıdır. Parolanızı daha sonra değiştirebilirsiniz, ancak devre dışı bırakamazsınız. Parolanızı unutursanız, kurtarma anahtarını kullanarak diske yeniden erişebilirsiniz.';

  @override
  String get passphrasePageBodyPin =>
      'Bilgisayarınızı her açtığınızda PIN kodunuzu girmeniz gerekecektir. Bu PIN, kullanıcı parolanızdan farklıdır. Daha sonra değiştirebilirsiniz, ancak devre dışı bırakamazsınız. PIN kodunuzu unutursanız, kurtarma anahtarını kullanarak diske tekrar erişebilirsiniz.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Parola';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Parolayı onayla';

  @override
  String get passphrasePageRequiredPassphrase => 'Bir parola gereklidir';

  @override
  String get passphrasePageMismatchPassphrase => 'Parolalar eşleşmiyor';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'PIN\'i onayla';

  @override
  String get passphrasePageRequiredPin => 'Bir PIN gereklidir';

  @override
  String get passphrasePageMismatchPin => 'PIN\'ler eşleşmiyor';

  @override
  String get passphraseTypePassphraseTileTitle => 'Bir parola gereklidir';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'En güvenlisi. Bilgisayarınızı her açtığınızda daha uzun bir parola girmeniz gerekecek.';

  @override
  String get passphraseTypePinTileTitle => 'PIN gereklidir';

  @override
  String get passphraseTypePinTileSubTitle =>
      'Daha güvenli. Bilgisayarınızı her açtığınızda sayısal bir PIN girmeniz gerekecek.';

  @override
  String get passphraseTypeNoneTileTitle =>
      'Diskin otomatik olarak kilidini aç';

  @override
  String get passphraseTypePageHeader => 'Şifreleme PIN\'i veya parola ifadesi';

  @override
  String get passphraseTypePageBody =>
      'Varsayılan olarak, bilgisayarın Güvenilir Platform Modülü (TPM), başlatma sırasında diskin kilidini açacaktır. Ancak, verilerinizi daha fazla korumak için bir PIN veya parola da isteyebilirsiniz.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Zayıf parola cümlesi, daha uzun veya daha karmaşık hale getirin';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Güçlü bir parola kullanın, daha iyi güvenlik için daha uzun veya daha karmaşık hale getirin';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Güçlü parola';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'Zayıf PIN, daha uzun veya daha az tahmin edilebilir hale getirin';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'Güçlü PIN kullanın, daha iyi güvenlik için daha uzun veya daha az tahmin edilebilir hale getirin';

  @override
  String get passphrasePagePinEntropyOptimal => 'PIN yeterince uzun';

  @override
  String get installationTypeTitle => 'Disk kurulumu';

  @override
  String installationTypeHeader(String DISTRO) {
    return '$DISTRO\'yu nasıl kurmak istiyorsunuz?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Bu bilgisayarda şu anda $os yüklü. Ne yapmak istersiniz?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Bu bilgisayarda şu anda $os1 ve $os2 yüklü. Ne yapmak istersiniz?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'Bu bilgisayarda şu anda birden fazla işletim sistemi yüklü. Ne yapmak istersiniz?';

  @override
  String get installationTypeNoOSDetected =>
      'Bu bilgisayarda şu anda algılanan bir işletim sistemi yok. Ne yapmak istersiniz?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Diski silin ve $DISTRO yükleyin';
  }

  @override
  String get installationTypeEraseInfo =>
      'Disk üzerindeki tüm veriler ve bölümler, işletim sistemleri de dahil olmak üzere silinecektir.';

  @override
  String get installationTypeAdvancedLabel => 'Gelişmiş seçenekleri göster...';

  @override
  String get installationTypeAdvancedTitle => 'Şifreleme ve dosya sistemi';

  @override
  String get installationTypeExperimental => 'Deneysel';

  @override
  String get installationTypeNone => 'Şifreleme yok';

  @override
  String get installationTypeNoneInfo => 'Şifrelemesiz standart dosya sistemi.';

  @override
  String get installationTypeNoneSelected => 'Hiçbiri seçilmedi';

  @override
  String get installationTypeLVM => 'LVM\'yi şifreleme olmadan kullanın';

  @override
  String get installationTypeLVMSelected => 'LVM seçildi';

  @override
  String get installationTypeLVMEncryption => 'Bir parola ile şifreleyin';

  @override
  String get installationTypeLVMEncryptionInfo =>
      'Bilgisayarınızı her açtığınızda bir parola girmeniz gerekecektir. Bu, LVM ile LUKS şifrelemesini kullanır.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'LVM ve şifreleme seçildi';

  @override
  String get installationTypeEncryptInfo =>
      'Bir sonraki adımda güvenlik anahtarını seçeceksiniz.';

  @override
  String get installationTypeZFS => 'Şifreleme olmadan ZFS kullanın';

  @override
  String get installationTypeZFSEncryption =>
      'ZFS kullanarak bir parola ile şifreleme';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'ZFS ile yerel şifreleme. Bilgisayarınızı her açtığınızda bir parola girmeniz gerekecektir.';

  @override
  String get installationTypeZFSSelected => 'ZFS seçildi';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'ZFS ve şifreleme seçildi';

  @override
  String get installationTypeTPM => 'Donanım destekli şifrelemeyi kullanın';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'Bu seçeneği seçmeden önce <a href=\"$url\">TPM şifrelemesi hakkında bilgi edinin</a>. Bu, donanımınız veya gelecekteki $DISTRO sürümleriyle çalışmayabilir.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM seçildi';

  @override
  String installationTypeReinstall(String os) {
    return '$os sil ve yeniden kur';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Uyarı:</font> Bu, tüm $os programlarınızı, belgelerinizi, fotoğraflarınızı, müziklerinizi ve diğer dosyalarınızı silecektir.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return '$product ürününü $os yanına yükleyin';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return '$product ürününü $os1 ve $os2 yanına kur';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return '$product mevcut işletim sistemleriyle birlikte yükleyin';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return '$product işletim sistemini diğer bölümlerin yanına kur';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Yeniden boyutlandırılacak ve $product için alan oluşturulacak bölümü seçin. Önyükleme sırasında işletim sisteminizi seçebilirsiniz.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return '$os\'u silin ve $product\'ı yükleyin';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Mevcut $os kurulumundaki tüm dosyalar ve veriler kalıcı olarak silinecektir.';
  }

  @override
  String get installationTypeManual => 'Manuel kurulum';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Özelleştirilmiş disk kurulumları arayan ileri düzey kullanıcılar için.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Diski silin ve $DISTRO yükleyin';
  }

  @override
  String get selectGuidedStorageInfo => 'Seçtiğiniz diskte sıfırdan başlayın.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Sürücüyü seçin:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Bölüm seçin:';

  @override
  String get selectGuidedStorageInfoLabel => 'Tüm disk kullanılacaktır:';

  @override
  String get selectGuidedStorageInstallNow => 'Şimdi kur';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return '$DISTRO\'nun nereye yükleneceğini seçin';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Aşağıdaki ayırıcıyı sürükleyerek sürücü alanını ayırın:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num daha küçük bölüm gizlidir, daha fazla kontrol için <a href=\"$url\">gelişmiş bölümlendirme aracını</a> kullanın';
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
  String get allocateDiskSpace => 'Manuel bölümlendirme';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Bağlama noktaları \"/\" ile başlamalıdır';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Bağlama noktaları boşluk içeremez';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format, $mountpoint için desteklenen bir dosya sistemi değildir';
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
  String get newPartitionTableConfirmationMessage =>
      'Bir cihazın tamamında yeni bir bölüm tablosu oluşturmak, cihazın tüm mevcut bölümlerini kaldırır. Gerekirse bu işlem geri alınabilir.';

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
  String get partitionFormatNone => 'Biçimlendirilmemiş olarak bırak';

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
  String get confirmHeader => 'Seçimlerinizi gözden geçirin';

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
  String get confirmEntryDiskSetup => 'Kurulum türü';

  @override
  String get confirmEntryDiskEncryption => 'Disk şifreleme';

  @override
  String get confirmEntryInstallationDisk => 'Kurulum diski';

  @override
  String get confirmEntryProprietarySoftware => 'Tescilli yazılım';

  @override
  String get confirmSectionGeneralTitle => 'Genel';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Güvenlik ve daha fazlası';

  @override
  String get confirmPartitionsTitle => 'Bölümler';

  @override
  String get confirmPartitionTables =>
      'Aşağıdaki cihazların bölüm tabloları değiştirildi:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Kodekler';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Kodekler ve sürücüler';

  @override
  String get confirmProprietarySoftwareDrivers => 'Sürücüler';

  @override
  String get confirmInstallButton => 'Kur';

  @override
  String get confirmTableErased => 'Silinmiş';

  @override
  String get confirmTableUnchanged => 'Değişmemiş';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return '$oldsize boyutundan $newsize boyutuna yeniden boyutlandırıldı';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return '$mountpoint için kullanılan $format olarak oluşturuldu ve biçimlendirildi';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return '$mountpoint için kullanılan $format olarak biçimlendirildi';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return '$mountpoint için kullanılır';
  }

  @override
  String confirmTableFormatted(String format) {
    return '$format olarak biçimlendirildi';
  }

  @override
  String get installationCompleteTitle => 'Kurulum tamamlandı';

  @override
  String readyToUse(String system) {
    return '$system kuruldu ve kullanıma hazır';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** diske kopyalandı';
  }

  @override
  String restartInto(String system) {
    return '$system\'i yeniden başlat';
  }

  @override
  String get restartWarningBody =>
      'Kurulumu tamamlamak veya teste devam etmek için yeniden başlatın.\nYaptığınız değişiklikler kaydedilmeyecektir.';

  @override
  String get rebootToConfigureWarning =>
      'Kurulum işlemine devam edebilmek için bilgisayarınızı yeniden başlatmanız gerekmektedir.';

  @override
  String get shutdown => 'Kapat';

  @override
  String get restartNow => 'Şimdi yeniden başlat';

  @override
  String get continueTesting => 'Test etmeye devam et';

  @override
  String get bitlockerInfoTitle => 'BitLocker algılandı';

  @override
  String get bitlockerInfoDescription =>
      'Bir veya daha fazla bölüm BitLocker ile şifrelenmiştir.';

  @override
  String get bitlockerInfoDisable =>
      'Windows\'un yanına kurulum yapmak için Windows\'ta BitLocker\'ı devre dışı bırakın.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows, kurulumdan sonra önyükleme sırasında kurtarma anahtarları isteyebilir.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Talimatlar için <a href=\"$url\">BitLocker kılavuzunu</a> ziyaret edin.';
  }

  @override
  String get bitlockerWarningTitle =>
      'BitLocker kurtarma anahtarları olmadan tüm verilerinizi kaybedebilirsiniz';

  @override
  String get restartComputer => 'Bilgisayarı yeniden başlat';

  @override
  String get restartComputerTitle => 'Bilgisayar yeniden başlatılsın mı?';

  @override
  String get restartIntoWindows => 'Windows\'a yeniden başlat';

  @override
  String get restartIntoWindowsTitle => 'Windows\'a yeniden başlatılsın mı?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Bilgisayarınızı yeniden başlatmak istediğinizden emin misiniz? $DISTRO kurulumunu tamamlamak için daha sonra $DISTRO kurulumunu yeniden başlatmanız gerekecektir.';
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
  String get installationSlidesWelcomeTitle =>
      'Hızlı, ücretsiz ve yeni özelliklerle dolu';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return '$DISTRO\'nun son sürümü işleri hiç olmadığı kadar kolaylaştırır.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'İster geliştirici, ister içerik oluşturucu, ister oyuncu veya yönetici olun, $RELEASE sürümünde üretkenliğinizi artıracak ve deneyiminizi zenginleştirecek yeni araçlar bulacaksınız.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'İhtiyacınız olan tüm uygulamalar';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Snap Store ve $DISTRO arşivindeki binlerce uygulama dahil tüm uygulamaları Ubuntu Software ile kurun, yönetin ve güncelleyin.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Açık kaynağın en iyileriyle geliştir';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO uygulama veya web geliştirme, veri bilimi, yapay zeka ve makine öğrenmesi yanı sıra sistem yönetimi ve DevOps için ideal iş istasyonudur. Her $DISTRO sürümü en güncel toolchainleri içerir ve tüm popüler IDE\'leri destekler.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Yaratıcılığınızı geliştirin';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Eğer bir animatör, tasarımcı, video yapımcısı veya oyun geliştiricisiyseniz, açık kaynaklı ve endüstri standardı yazılım ve uygulamalara destek sağlayan iş akışlarınızı $DISTRO\'ya taşımanız kolaydır.';
  }

  @override
  String get installationSlidesGamingTitle => 'Oyun için harika';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO, performans ve uyumluluğu artırmak için en yeni NVIDIA ve Mesa sürücülerini destekler. Binlerce Windows oyunu, Steam gibi uygulamalar aracılığıyla ek bir yapılandırmaya gerek kalmadan $DISTRO üzerinde harika bir şekilde oynanabilir.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Özel ve güvenli';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO, çevrimiçi ortamda gizliliğinizi ve güvenliğinizi korumanız için ihtiyacınız olan tüm araçları sunar. Dahili güvenlik duvarı ve VPN desteğinin yanı sıra, verilerinizin tam kontrolünü elinizde tutmanızı sağlayan çok sayıda gizlilik odaklı uygulama sunar.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Tüm $DISTRO LTS sürümleri beş yıllık güvenlik yamasıyla birlikte gelir ve Ubuntu Pro aboneliğiyle bu süre on yıla kadar uzayabilir.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Üretkenliğinizi artırın';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Masaüstü, belgeler, elektronik tablolar ve sunumlar için Microsoft Office uyumlu açık kaynaklı uygulamalardan oluşan bir paket olan LibreOffice\'i içerir. Popüler iş birliği araçları da mevcuttur.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Herkes için erişim';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '$DISTRO felsefesinin merkezinde, bilişimin herkes için olduğuna dair inanç yatar. Gelişmiş erişilebilirlik araçları ve dil, renk ve metin boyutunu değiştirme seçenekleriyle $DISTRO, kim olursanız olun ve nerede olursanız olun bilişimi kolaylaştırır.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca Ekran Okuyucu';

  @override
  String get installationSlidesAccessibilityLanguages => 'Dil desteği';

  @override
  String get installationSlidesSupportTitle => 'Yardım ve destek';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Resmi $DISTRO dokümantasyonu hem çevrimiçi olarak hem de dock\'taki Yardım simgesi aracılığıyla kullanılabilir.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu, çeşitli soru ve yanıtları kapsar ve Ubuntu Discourse, yeni ve deneyimli kullanıcılar için kılavuzlar ve tartışmalar sağlar.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Kurumsal kullanıcılar için Canonical, işyerinde Ubuntu\'yu güvenli bir şekilde kullanmayı ve yönetmeyi kolaylaştırmak amacıyla ticari destek sağlıyor.';

  @override
  String get installationSlidesSupportResources => 'Yararlı kaynaklar:';

  @override
  String get installationSlidesSupportDocumentation => 'Resmi belgelendirme';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Ubuntu Pro ile kurumsal düzeyde 7/24 destek';

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
    return 'Seçilen diskte $DISTRO\'yu yüklemek için yeterli disk alanı yok. Alanı açmak için yükleyiciden çıkın veya başka bir disk seçin.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Kullanılabilir:';

  @override
  String get notEnoughDiskSpaceRequired => 'Gerekli:';

  @override
  String get refreshPageTitle => 'Güncelleme mevcut';

  @override
  String get refreshHeader => 'Yükleyici için bir güncelleme mevcut';

  @override
  String get refreshUpdateNow => 'Şimdi güncelle';

  @override
  String get refreshInfo =>
      'Gelişmiş güvenilirlik ve daha fazla özellik için en son sürüme güncelleyin.';

  @override
  String get refreshReady => 'Güncelleme hazır';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Şu anki $snap sürümü $version.';
  }

  @override
  String refreshInstall(String version) {
    return '$version sürümüne güncelle';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Mevcut sürüm $version günceldir.';
  }

  @override
  String refreshUpdating(String snap) {
    return '$snap güncelleniyor...';
  }

  @override
  String get refreshRestart =>
      'Lütfen yükleyiciyi kapatın ve devam etmek için yeniden başlatın';

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
  String get recoveryKeyTitle => 'Kurtarma anahtarı';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Önemli';

  @override
  String get recoveryKeyHeader => 'Kurtarma anahtarınızı kaydedin';

  @override
  String get recoveryKeyInfoHeader =>
      'Kurtarma anahtarınız olmadan tüm verilerinizi kaybedebilirsiniz';

  @override
  String get recoveryKeyTextFieldLabel => 'Kurtarma anahtarı';

  @override
  String get recoveryKeyStorageAdvice =>
      'Başlatma sırasında şifre çözme işlemi başarısız olursa, bu kurtarma anahtarını sağlamanız gerekecektir. Anahtar olmadan tüm verilerinize erişiminizi kaybedersiniz. Anahtarınızı parola yöneticisi gibi güvenli bir yerde saklayın.';

  @override
  String get recoveryKeyConfirmation =>
      'Kurtarma anahtarımı güvenli bir yere kaydettim';

  @override
  String get recoveryKeyLinkLabel => 'Daha fazla bilgi edin';

  @override
  String get recoveryKeySaveToFileLabel => 'Dosyaya kaydet';

  @override
  String get recoveryKeyShowQrCodeLabel => 'QR kodunu göster';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Masaüstü - Kurtarma anahtarı';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Kurtarma anahtarını kopyalamak ve şifre yöneticisi gibi güvenli bir yere kaydetmek için QR kodunu tarayın. Ayrıca daha sonra kullanmak üzere fotoğrafını da çekebilirsiniz.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Panoya kopyalandı';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Kurtarma anahtarı dosyası kaydedilmedi';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Kurtarma anahtarı dosyası geçici bir konuma kaydedilemez';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Bilinmeyen hata';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'Bu klasöre yazma izniniz yok. Farklı bir konum deneyin veya başka bir yöntem kullanın.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Çıkarılabilir bir sürücü gibi farklı bir konum deneyin veya başka bir yöntem kullanın.';

  @override
  String get recoveryKeyFilePickerTitle =>
      'Kurtarma anahtarı dosyasını kaydedin';

  @override
  String get recoveryKeyFilePickerFilter => 'Metin dosyaları';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'QR kodunu tarayın veya aşağıdaki kodu <a href=\"https://$url\">$url</a> adresine girin';
  }

  @override
  String get landscapePageTitle => 'Otomatik kurulum';

  @override
  String get landscapeHeader => 'Landscape\'e giriş yapın';

  @override
  String get landscapeDomainHeader => 'Landscape etki alanını girin (FQDN)';

  @override
  String get landscapeDomainHintText => 'Landscape etki alanı (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Giriş yapmak ve otomatik yükleme dosyasını almak için kuruluşunuzun Landscape etki alanını belirtin. Tam alan adını (FQDN) BT destek ekibinizden alabilirsiniz.';

  @override
  String get landscapeDomainTextField => 'Landscape etki alanı (FQDN)';

  @override
  String get next => 'Sonraki';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Geçersiz alan adı, lütfen kontrol edin veya BT desteğinizle iletişime geçin';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Devam etmek için internete bağlanın';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Otomatik kurulum dosyasını Landscape\'ten almak için internete ihtiyaç var';

  @override
  String get landscapeCodeExpiredWarning =>
      'Kodun süresi doldu, lütfen tekrar deneyin';

  @override
  String get landscapeLoginFailedWarning =>
      'Giriş başarısız oldu, lütfen tekrar deneyin';

  @override
  String get landscapeErrorPageTitle =>
      'Hesabınız için otomatik kurulum mevcut değil';

  @override
  String get landscapeErrorPageBody =>
      'BT desteğinizle iletişime geçin veya farklı bir kurulum seçeneği deneyin.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Hata kodu: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu, kuruluşunuz tarafından sağlanan yapılandırmayla kurulacaktır';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Aşağıda Landscape\'ten içe aktarılan otomatik kurulum dosyasını inceleyebilirsiniz.';

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
