// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class UbuntuBootstrapLocalizationsEl extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'Πρόγραμμα εγκατάστασης Ubuntu Desktop';

  @override
  String windowTitle(String RELEASE) {
    return 'Εγκατάσταση του $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Αυτοματοποιημένη εγκατάσταση';

  @override
  String get autoinstallDirectHeader =>
      'Εισαγωγή αρχείου αυτόματης εγκατάστασης';

  @override
  String get autoinstallDirectUrlLabel =>
      'Μπορείτε να εισαγάγετε τη διεύθυνση URL ενός αρχείου αυτόματης εγκατάστασης:';

  @override
  String get autoinstallDirectFileLabel => 'Ή επιλέξτε ένα τοπικό αρχείο:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Επιλογή αρχείου…';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Εκκαθάριση αρχείου';

  @override
  String get autoinstallDirectFilePickerTitle => 'Επιλογή αρχείου';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'Αρχεία YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'Εισαγωγή';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'Το αρχείο αυτόματης εγκατάστασης δεν είναι προσβάσιμο';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Ελέγξτε αν η διεύθυνση URL είναι σωστή, δοκιμάστε τη σύνδεσή σας στο διαδίκτυο ή προσπαθήστε ξανά αργότερα.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Μη έγκυρο URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Ελέγξτε αν η διεύθυνση URL είναι σωστή ή επιλέξτε ένα τοπικό αρχείο.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Μη έγκυρο αρχείο αυτόματης εγκατάστασης';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Ελέγξτε το αρχείο ή δώστε ένα διαφορετικό.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Το αρχείο αυτόματης εγκατάστασης δεν είναι αναγνώσιμο';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Ελέγξτε τα δικαιώματά σας ή δώστε ένα διαφορετικό αρχείο.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Άγνωστο σφάλμα';

  @override
  String get autoinstallTitle => 'Τύπος εγκατάστασης';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Πώς θα θέλατε να εγκαταστήσετε το $DISTRO;';
  }

  @override
  String get autoinstallInstructions =>
      'Εισαγάγετε τη διεύθυνση URL του autoinstall.yaml ή την τοπική διαδρομή του αρχείου:';

  @override
  String get autoinstallInteractiveOption => 'Διαδραστική εγκατάσταση';

  @override
  String get autoinstallInteractiveDescription =>
      'Για χρήστες που επιθυμούν να καθοδηγηθούν βήμα προς βήμα κατά την εγκατάσταση.';

  @override
  String get autoinstallDirectOption =>
      'Αυτοματοποιημένη με αρχείο autoinstall';

  @override
  String get autoinstallDirectDescription =>
      'Για προχωρημένους χρήστες που διαθέτουν αρχείο autoinstall.yaml για ομοιόμορφες και επαναλήψιμες εγκαταστάσεις συστημάτων.';

  @override
  String get autoinstallLandscapeOption => 'Αυτοματοποιημένη με το Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'Για χρήστες σε οργανισμούς που παρέχουν αρχείο αυτόματης εγκατάστασης μέσω του Landscape.';

  @override
  String get autoinstallErrorMessage =>
      'Μια εντολή στο αρχείο αυτόματης εγκατάστασης απέτυχε να εκτελεστεί κατά την εγκατάσταση.';

  @override
  String get autoinstallErrorInstructions =>
      'Θα χρειαστεί να επανεκκινήσετε την εγκατάσταση. Ελέγξτε το αρχείο αυτόματης εγκατάστασης, επιλέξτε έναν διαφορετικό τύπο εγκατάστασης ή επικοινωνήστε με την τεχνική υποστήριξη.';

  @override
  String get changeButtonText => 'Αλλαγή';

  @override
  String get quitButtonText => 'Έξοδος από την εγκατάσταση';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Καλώς ήλθατε στο $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Προετοιμασία του $DISTRO…';
  }

  @override
  String get warningLabel => 'Προειδοποίηση:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Δοκιμάστε ή εγκαταστήστε το $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Τι θέλετε να κάνετε με το $DISTRO;';
  }

  @override
  String get tryOrInstallRepairOption => 'Επιδιόρθωση εγκατάστασης';

  @override
  String get tryOrInstallRepairDescription =>
      'Η επιδιόρθωση θα επανεγκαταστήσει όλο το εγκατεστημένο λογισμικό χωρίς να επηρεάσει τα έγγραφα ή τις ρυθμίσεις.';

  @override
  String tryOption(String RELEASE) {
    return 'Δοκιμάστε το $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Μπορείτε να δοκιμάσετε το $RELEASE χωρίς να πραγματοποιήσετε καμία αλλαγή στον υπολογιστή σας.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Εγκατάσταση του $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Εγκαταστήστε το $RELEASE παράλληλα με το τρέχον λειτουργικό σας σύστημα (ή στη θέση του). Αυτό δεν θα πάρει πολύ χρόνο.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Μπορείτε να διαβάσετε τις <a href=\"$url\">σημειώσεις έκδοσης</a>.';
  }

  @override
  String get rstTitle => 'Ανιχνεύθηκε RST';

  @override
  String get rstHeader =>
      'Πρέπει να απενεργοποιήσετε το Intel Rapid Storage Technology (RST) για να συνεχίσετε την εγκατάσταση';

  @override
  String get rstDisable =>
      'Ο υπολογιστής σας χρησιμοποιεί το Intel RST (Rapid Storage Technology). Μπορείτε να απενεργοποιήσετε το RST είτε στο:';

  @override
  String get rstDisableWindows =>
      '... στα Windows, εάν χρησιμοποιείτε μια εγκατάσταση διπλής εκκίνησης (dual boot) με τα Windows';

  @override
  String get rstDisableBios => '... στις ρυθμίσεις BIOS';

  @override
  String rstInstructions(String url) {
    return 'Για οδηγίες, σαρώσετε τον κωδικό QR από μια άλλη συσκευή ή επισκεφθείτε τη διεύθυνση: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Διαμόρφωση του Secure Boot';

  @override
  String get configureSecureBootDescription =>
      'Έχετε επιλέξει την εγκατάσταση λογισμικού προγραμμάτων οδήγησης (drivers) τρίτων κατασκευαστών. Αυτό απαιτεί την απενεργοποίηση του Secure Boot.\nΓια να το κάνετε αυτό, πρέπει να επιλέξετε έναν κωδικό ασφαλείας τώρα και να τον εισαγάγετε όταν γίνει επανεκκίνηση του συστήματος.';

  @override
  String get configureSecureBootOption => 'Διαμόρφωση του Secure Boot';

  @override
  String get chooseSecurityKey => 'Επιλέξτε ένα κλειδί ασφαλείας';

  @override
  String get confirmSecurityKey => 'Επιβεβαιώστε το κλειδί ασφαλείας';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Να μην εγκατασταθεί το λογισμικό προγραμμάτων οδήγησης προς το παρόν';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Μπορείτε να το εγκαταστήσετε αργότερα από το «Λογισμικό και Ενημερώσεις».';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Απαιτείται κλειδί ασφαλείας';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'Τα κλειδιά ασφαλείας δεν ταιριάζουν';

  @override
  String get showSecurityKey => 'Εμφάνιση';

  @override
  String get hideSecurityKey => 'Απόκρυψη';

  @override
  String get updatesOtherSoftwarePageTitle => 'Εφαρμογές';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Ποιες εφαρμογές θα θέλατε να εγκαταστήσετε για αρχή;';

  @override
  String get codecsAndDriversPageTitle => 'Βελτιστοποίηση του υπολογιστή σας';

  @override
  String get codecsAndDriversPageDescription =>
      'Να εγκατασταθεί το προτεινόμενο ιδιοταγές λογισμικό;';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'Το $DISTRO δεν περιλαμβάνει ιδιοταγές λογισμικό από προεπιλογή. Η εγκατάσταση πρόσθετου λογισμικού ενδέχεται να βελτιώσει την απόδοση του υπολογιστή σας.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Εντοπίστηκε κάρτα γραφικών NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody =>
      'Για την καλύτερη δυνατή απόδοση των καρτών γραφικών NVIDIA, συνιστάται ανεπιφύλακτα η εγκατάσταση πρόσθετων προγραμμάτων οδήγησης.';

  @override
  String get fullInstallationTitle => 'Εκτεταμένη επιλογή';

  @override
  String get fullInstallationSubtitle =>
      'Μια επιλογή εργαλείων γραφείου, βοηθητικών προγραμμάτων και προγράμματος περιήγησης ιστού, φιλική προς χρήση χωρίς σύνδεση.';

  @override
  String get minimalInstallationTitle => 'Προεπιλεγμένη επιλογή';

  @override
  String get minimalInstallationSubtitle =>
      'Μόνο τα απαραίτητα: πρόγραμμα περιήγησης ιστού και βασικά βοηθητικά προγράμματα.';

  @override
  String get otherOptions => 'Άλλες επιλογές';

  @override
  String get installThirdPartyTitle =>
      'Εγκατάσταση λογισμικού τρίτων για υλικό γραφικών και Wi-Fi, καθώς και πρόσθετων μορφότυπων πολυμέσων';

  @override
  String get installThirdPartySubtitle =>
      'Αυτό το λογισμικό υπόκειται στους όρους άδειας χρήσης που περιλαμβάνονται στην τεκμηρίωσή του. Ορισμένοι εξ αυτών είναι ιδιοταγείς.';

  @override
  String get installDriversTitle =>
      'Εγκατάσταση λογισμικού τρίτων για υλικό γραφικών και Wi-Fi';

  @override
  String get installDriversSubtitle =>
      'Συμπεριλαμβανομένων, μεταξύ άλλων, των προγραμμάτων οδήγησης NVIDIA και παρόμοιων';

  @override
  String get installCodecsTitle =>
      'Λήψη και εγκατάσταση υποστήριξης για πρόσθετους μορφότυπους πολυμέσων';

  @override
  String get installCodecsSubtitle =>
      'Συμπεριλαμβανομένων, μεταξύ άλλων, των MP3, MP4, MOV και παρόμοιων';

  @override
  String get batteryWarning =>
      'Ο υπολογιστής δεν είναι συνδεδεμένος σε πηγή τροφοδοσίας.';

  @override
  String get offlineWarning => 'Αυτή τη στιγμή βρίσκεστε εκτός σύνδεσης';

  @override
  String get choosePassphraseHeader => 'Δημιουργήστε μια συνθηματική φράση';

  @override
  String get choosePassphraseBody =>
      'Θα χρειαστεί να εισάγετε τη συνθηματική σας φράση κάθε φορά που ενεργοποιείτε τον υπολογιστή σας. Αυτή η συνθηματική φράση είναι διαφορετική από τον κωδικό πρόσβασης του χρήστη σας.';

  @override
  String get choosePassphraseInfoHeader =>
      'Βεβαιωθείτε ότι έχετε αποθηκεύσει τη συνθηματική σας φράση';

  @override
  String get choosePassphraseInfoBody =>
      'Αν τη χάσετε, θα χάσετε όλα τα δεδομένα σας.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Φυλάξτε τη συνθηματική σας φράση και το κλειδί ανάκτησης σε ασφαλές μέρος';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Αν χάσετε τη συνθηματική σας φράση, θα χάσετε όλα τα δεδομένα σας. Η συνθηματική φράση δεν αντικαθιστά το κλειδί ανάκτησης ή τον κωδικό πρόσβασης του χρήστη σας.';

  @override
  String get passphrasePageTitle => 'Κρυπτογράφηση';

  @override
  String get passphrasePageHeaderPassphrase =>
      'Ορίστε μια συνθηματική φράση κρυπτογράφησης';

  @override
  String get passphrasePageHeaderPin => 'Ορίστε έναν PIN κρυπτογράφησης';

  @override
  String get passphrasePageBodyPassphrase =>
      'Θα χρειαστεί να εισάγετε τη συνθηματική σας φράση κάθε φορά που ενεργοποιείτε τον υπολογιστή σας. Αυτή η συνθηματική φράση είναι διαφορετική από τον κωδικό πρόσβασης του χρήστη σας. Θα μπορείτε να την αλλάξετε αργότερα, αλλά όχι να την απενεργοποιήσετε. Αν ξεχάσετε τη συνθηματική σας φράση, μπορείτε να ανακτήσετε την πρόσβαση στον δίσκο χρησιμοποιώντας το κλειδί ανάκτησης.';

  @override
  String get passphrasePageBodyPin =>
      'Θα χρειαστεί να εισάγετε το PIN σας κάθε φορά που ενεργοποιείτε τον υπολογιστή σας. Αυτό το PIN είναι διαφορετικό από τον κωδικό πρόσβασης του χρήστη σας. Θα μπορείτε να το αλλάξετε αργότερα, αλλά όχι να το απενεργοποιήσετε. Αν ξεχάσετε το PIN σας, μπορείτε να ανακτήσετε την πρόσβαση στον δίσκο χρησιμοποιώντας το κλειδί ανάκτησης.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Συνθηματική φράση';

  @override
  String get passphrasePageConfirmPassphraseHint =>
      'Επιβεβαίωση συνθηματικής φράσης';

  @override
  String get passphrasePageRequiredPassphrase =>
      'Απαιτείται μια συνθηματική φράση';

  @override
  String get passphrasePageMismatchPassphrase =>
      'Οι συνθηματικές φράσεις δεν ταιριάζουν';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Επιβεβαίωση PIN';

  @override
  String get passphrasePageRequiredPin => 'Απαιτείται PIN';

  @override
  String get passphrasePageMismatchPin => 'Τα PIN δεν ταιριάζουν';

  @override
  String get passphraseTypePassphraseTileTitle =>
      'Απαίτηση συνθηματικής φράσης';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Η μέγιστη ασφάλεια. Θα χρειαστεί να εισάγετε μια μεγαλύτερη συνθηματική φράση κάθε φορά που ενεργοποιείτε τον υπολογιστή σας.';

  @override
  String get passphraseTypePinTileTitle => 'Απαίτηση PIN';

  @override
  String get passphraseTypePinTileSubTitle =>
      'Περισσότερη ασφάλεια. Θα χρειαστεί να εισάγετε έναν αριθμητικό PIN κάθε φορά που ενεργοποιείτε τον υπολογιστή σας.';

  @override
  String get passphraseTypeNoneTileTitle => 'Αυτόματο ξεκλείδωμα δίσκου';

  @override
  String get passphraseTypePageHeader => 'Πρόσθετη ασφάλεια';

  @override
  String get passphraseTypePageBody =>
      'Από προεπιλογή, η Μονάδα Έμπιστης Πλατφόρμας (TPM) του υπολογιστή θα ξεκλειδώνει τον δίσκο κατά την εκκίνηση. Έχετε επίσης επιλογές για περαιτέρω προστασία των δεδομένων σας.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Ασθενής συνθηματική φράση, κάντε την μεγαλύτερη ή πιο περίπλοκη';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Μέτρια συνθηματική φράση, κάντε την μεγαλύτερη ή πιο περίπλοκη για καλύτερη ασφάλεια';

  @override
  String get passphrasePagePassphraseEntropyOptimal =>
      'Ισχυρή συνθηματική φράση';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'Ασθενές PIN, κάντε το μεγαλύτερο ή λιγότερο προβλέψιμο';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'Μέτριο PIN, κάντε το μεγαλύτερο ή λιγότερο προβλέψιμο για καλύτερη ασφάλεια';

  @override
  String get passphrasePagePinEntropyOptimal => 'Το PIN έχει επαρκές μήκος';

  @override
  String get installationTypeTitle => 'Ρύθμιση δίσκου';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Πώς θέλετε να εγκαταστήσετε το $DISTRO;';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Αυτός ο υπολογιστής διαθέτει ήδη το $os. Τι θα θέλατε να κάνετε;';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Αυτός ο υπολογιστής διαθέτει ήδη τα $os1 και $os2. Τι θα θέλατε να κάνετε;';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'Αυτός ο υπολογιστής διαθέτει επί του παρόντος πολλαπλά λειτουργικά συστήματα. Τι θα θέλατε να κάνετε;';

  @override
  String get installationTypeNoOSDetected =>
      'Αυτός ο υπολογιστής δεν εμφανίζεται να έχει λειτουργικά συστήματα αυτή τη στιγμή. Τι θα θέλατε να κάνετε;';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Διαγραφή δίσκου και εγκατάσταση του $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'Όλα τα δεδομένα και οι κατατμήσεις στον δίσκο θα διαγραφούν, συμπεριλαμβανομένων των λειτουργικών συστημάτων.';

  @override
  String get installationTypeAdvancedLabel => 'Επιλογές για προχωρημένους';

  @override
  String get installationTypeAdvancedTitle =>
      'Κρυπτογράφηση και σύστημα αρχείων';

  @override
  String get installationTypeExperimental => 'Πειραματικό';

  @override
  String get installationTypeNone => 'Χωρίς κρυπτογράφηση';

  @override
  String get installationTypeNoneInfo =>
      'Τυπικό σύστημα αρχείων χωρίς κρυπτογράφηση.';

  @override
  String get installationTypeNoneSelected => 'Δεν επιλέχθηκε κανένα';

  @override
  String get installationTypeLVM => 'Χρήση LVM χωρίς κρυπτογράφηση';

  @override
  String get installationTypeLVMSelected => 'Επιλέχθηκε LVM';

  @override
  String get installationTypeLVMEncryption =>
      'Κρυπτογράφηση με συνθηματική φράση';

  @override
  String installationTypeLVMEncryptionInfoResolute(String advancedHint) {
    return 'Θα χρειαστεί να εισάγετε μια συνθηματική φράση κάθε φορά που ενεργοποιείτε τον υπολογιστή σας. $advancedHint';
  }

  @override
  String get installationTypeLVMEncryptionInfo2 =>
      'Αυτή η επιλογή χρησιμοποιεί LVM με κρυπτογράφηση LUKS.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'Επιλέχθηκαν LVM και κρυπτογράφηση';

  @override
  String get installationTypeEncryptInfo =>
      'Θα επιλέξετε ένα κλειδί ασφαλείας στο επόμενο βήμα.';

  @override
  String get installationTypeZFS => 'Χρήση ZFS χωρίς κρυπτογράφηση';

  @override
  String get installationTypeZFSEncryption =>
      'Κρυπτογράφηση με συνθηματική φράση με χρήση ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Ενσωματωμένη κρυπτογράφηση με ZFS. Θα χρειαστεί να εισάγετε μια συνθηματική φράση κάθε φορά που ενεργοποιείτε τον υπολογιστή σας.';

  @override
  String get installationTypeZFSSelected => 'Επιλέχθηκε ZFS';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'Επιλέχθηκαν ZFS και κρυπτογράφηση';

  @override
  String get installationTypeTPM =>
      'Χρήση κρυπτογράφησης υποστηριζόμενης από υλικό';

  @override
  String get installationTypeTPMInfoResolute =>
      'Ο δίσκος θα ξεκλειδώνει αυτόματα κατά την εκκίνηση.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'Μη διαθέσιμο σε αυτόν τον υπολογιστή.';

  @override
  String get installationTypeTPMSelected => 'Επιλέχθηκε TPM';

  @override
  String installationTypeReinstall(String os) {
    return 'Διαγραφή του $os και επανεγκατάσταση';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Προειδοποίηση:</font> Αυτό θα διαγράψει όλα τα προγράμματα, τα έγγραφα, τις φωτογραφίες, τη μουσική και οποιαδήποτε άλλα αρχεία του $os.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Εγκατάσταση του $product παράλληλα με το $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Εγκατάσταση του $product παράλληλα με το $os1 και το $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Εγκατάσταση του $product παράλληλα με τα υπάρχοντα λειτουργικά συστήματα';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Εγκατάσταση του $product παράλληλα με άλλες κατατμήσεις';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Επιλέξτε μια κατάτμηση για αλλαγή μεγέθους και δημιουργία χώρου για το $product. Θα μπορείτε να επιλέξετε το λειτουργικό σας σύστημα κατά την εκκίνηση.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Διαγραφή του $os και εγκατάσταση του $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Όλα τα αρχεία και τα δεδομένα από την υπάρχουσα εγκατάσταση του $os θα διαγραφούν οριστικά.';
  }

  @override
  String get installationTypeManual => 'Μη αυτόματη εγκατάσταση';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Για προχωρημένους χρήστες που επιθυμούν προσαρμοσμένες ρυθμίσεις δίσκου.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Διαγραφή δίσκου και εγκατάσταση του $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo =>
      'Ξεκινήστε από το μηδέν στον επιλεγμένο δίσκο.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Επιλογή μονάδας δίσκου:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Επιλογή κατάτμησης:';

  @override
  String get selectGuidedStorageInfoLabel =>
      'Θα χρησιμοποιηθεί ολόκληρος ο δίσκος:';

  @override
  String get selectGuidedStorageInstallNow => 'Εγκατάσταση τώρα';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Επιλέξτε πού θα γίνει η εγκατάσταση του $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Κατανείμετε τον χώρο του δίσκου σύροντας το παρακάτω διαχωριστικό:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num μικρότερες κατατμήσεις είναι κρυφές, χρησιμοποιήστε το <a href=\"$url\">εργαλείο για προχωρημένους</a> για περισσότερο έλεγχο';
  }

  @override
  String get installAlongsideResizePartition => 'Αλλαγή μεγέθους κατάτμησης';

  @override
  String get installAlongsideAllocateSpace => 'Εκχώρηση χώρου';

  @override
  String get installAlongsideFiles => 'Αρχεία';

  @override
  String get installAlongsidePartition => 'Κατάτμηση:';

  @override
  String get installAlongsideSize => 'Μέγεθος:';

  @override
  String get installAlongsideAvailable => 'Διαθέσιμο:';

  @override
  String get allocateDiskSpace => 'Μη αυτόματη δημιουργία κατατμήσεων';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Τα σημεία προσάρτησης πρέπει να ξεκινούν με «/»';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Τα σημεία προσάρτησης δεν μπορούν να περιέχουν κενά';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return 'Το $format δεν είναι υποστηριζόμενο σύστημα αρχείων για το $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Συσκευή';

  @override
  String get diskHeadersType => 'Τύπος';

  @override
  String get diskHeadersMountPoint => 'Σημείο προσάρτησης';

  @override
  String get diskHeadersSize => 'Μέγεθος';

  @override
  String get diskHeadersUsed => 'Σε χρήση';

  @override
  String get diskHeadersSystem => 'Λειτουργικό σύστημα';

  @override
  String get diskHeadersFormat => 'Διαμόρφωση';

  @override
  String get freeDiskSpace => 'Ελεύθερος χώρος';

  @override
  String get newPartitionTable => 'Νέος πίνακας κατατμήσεων';

  @override
  String get newPartitionTableConfirmationTitle => 'Νέα κενή κατάτμηση';

  @override
  String get newPartitionTableConfirmationMessage =>
      'Η δημιουργία νέου πίνακα κατατμήσεων σε μια ολόκληρη συσκευή θα καταργήσει όλες τις τρέχουσες κατατμήσεις της. Αυτή η ενέργεια μπορεί να αναιρεθεί εάν χρειαστεί.';

  @override
  String get tooManyPrimaryPartitions => 'Πάρα πολλές πρωτεύουσες κατατμήσεις';

  @override
  String get partitionLimitReached => 'Συμπληρώθηκε το όριο';

  @override
  String get bootLoaderDevice =>
      'Συσκευή για την εγκατάσταση του προγράμματος εκκίνησης';

  @override
  String get partitionCreateTitle => 'Δημιουργία κατάτμησης';

  @override
  String get partitionEditTitle => 'Επεξεργασία κατάτμησης';

  @override
  String get partitionSizeLabel => 'Μέγεθος:';

  @override
  String get partitionTypeLabel => 'Τύπος για τη νέα κατάτμηση:';

  @override
  String get partitionTypePrimary => 'Πρωτεύουσα';

  @override
  String get partitionTypeLogical => 'Λογική';

  @override
  String get partitionLocationLabel => 'Θέση για τη νέα κατάτμηση:';

  @override
  String get partitionLocationBeginning => 'Αρχή αυτού του χώρου';

  @override
  String get partitionLocationEnd => 'Τέλος αυτού του χώρου';

  @override
  String get partitionFormatLabel => 'Χρήση ως:';

  @override
  String get partitionFormatNone => 'Να παραμείνει χωρίς διαμόρφωση';

  @override
  String partitionFormatKeep(String format) {
    return 'Να παραμείνει η διαμόρφωση ως $format';
  }

  @override
  String get partitionErase => 'Διαμόρφωση της κατάτμησης';

  @override
  String get partitionMountPointLabel => 'Σημείο προσάρτησης:';

  @override
  String get confirmPageTitle => 'Έτοιμο για εγκατάσταση';

  @override
  String get confirmHeader => 'Επανεξέταση των επιλογών σας';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Καμία';

  @override
  String get confirmDevicesTitle => 'Συσκευές';

  @override
  String get confirmEntryApplications => 'Εφαρμογές';

  @override
  String get confirmEntryDiskSetup => 'Τύπος εγκατάστασης';

  @override
  String get confirmEntryDiskEncryption => 'Κρυπτογράφηση δίσκου';

  @override
  String get confirmEntryInstallationDisk => 'Δίσκος για την εγκατάσταση';

  @override
  String get confirmEntryProprietarySoftware => 'Ιδιοταγές λογισμικό';

  @override
  String get confirmSectionGeneralTitle => 'Γενικά';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Ασφάλεια & περισσότερα';

  @override
  String get confirmPartitionsTitle => 'Κατατμήσεις';

  @override
  String get confirmPartitionTables =>
      'Οι πίνακες κατατμήσεων των ακόλουθων συσκευών έχουν τροποποιηθεί:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Κωδικοποιητές';

  @override
  String get confirmProprietarySoftwareCodecsDrivers =>
      'Κωδικοποιητές & προγράμματα οδήγησης';

  @override
  String get confirmProprietarySoftwareDrivers => 'Προγράμματα οδήγησης';

  @override
  String get confirmInstallButton => 'Εγκατάσταση';

  @override
  String get confirmTableErased => 'Διαγράφηκε';

  @override
  String get confirmTableUnchanged => 'Χωρίς αλλαγή';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Αλλαγή μεγέθους από $oldsize σε $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Δημιουργήθηκε και διαμορφώθηκε ως $format με χρήση για το $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Διαμορφώθηκε ως $format με χρήση για το $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Χρήση για το $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Διαμορφώθηκε ως $format';
  }

  @override
  String get installationCompleteTitle => 'Η εγκατάσταση ολοκληρώθηκε';

  @override
  String readyToUse(String system) {
    return 'Το $system έχει εγκατασταθεί και είναι έτοιμο για χρήση';
  }

  @override
  String rebootToConfigure(String system) {
    return 'Το **$system** έχει αντιγραφεί στον δίσκο';
  }

  @override
  String restartInto(String system) {
    return 'Επανεκκίνηση στο $system';
  }

  @override
  String get restartWarningBody =>
      'Κάντε επανεκκίνηση για να ολοκληρώσετε την εγκατάσταση ή συνεχίστε τη δοκιμή.\nΤυχόν αλλαγές που θα πραγματοποιήσετε καθώς συνεχίζετε τη δοκιμή, δεν θα αποθηκευτούν.';

  @override
  String get rebootToConfigureWarning =>
      'Πρέπει να επανεκκινήσετε τον υπολογιστή για να συνεχίσετε τη διαδικασία εγκατάστασης.';

  @override
  String get shutdown => 'Τερματισμός λειτουργίας';

  @override
  String get restartNow => 'Επανεκκίνηση τώρα';

  @override
  String get continueTesting => 'Συνέχεια δοκιμής';

  @override
  String get bitlockerInfoTitle => 'Ανιχνεύθηκε BitLocker';

  @override
  String get bitlockerInfoDescription =>
      'Μία ή περισσότερες κατατμήσεις είναι κρυπτογραφημένες με BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'Για να κάνετε εγκατάσταση παράλληλα με τα Windows, απενεργοποιήστε το BitLocker στα Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Τα Windows ενδέχεται να ζητήσουν κλειδιά ανάκτησης κατά την εκκίνηση μετά την εγκατάσταση.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Για οδηγίες, επισκεφθείτε τον <a href=\"$url\">οδηγό BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Ενδέχεται να χάσετε όλα τα δεδομένα σας χωρίς τα κλειδιά ανάκτησης BitLocker';

  @override
  String get restartComputer => 'Επανεκκίνηση υπολογιστή';

  @override
  String get restartComputerTitle => 'Επανεκκίνηση υπολογιστή;';

  @override
  String get restartInstaller => 'Επανεκκίνηση προγράμματος εγκατάστασης';

  @override
  String get restartIntoWindows => 'Επανεκκίνηση σε Windows';

  @override
  String get restartIntoWindowsTitle => 'Επανεκκίνηση σε Windows;';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Είστε βέβαιοι ότι θέλετε να επανεκκινήσετε τον υπολογιστή σας; Θα χρειαστεί να εκκινήσετε ξανά την εγκατάσταση του $DISTRO αργότερα για να ολοκληρωθεί η εγκατάσταση του $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Καλώς ορίσατε στο $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Διαθέσιμα:';

  @override
  String get installationSlidesIncluded => 'Περιλαμβάνονται:';

  @override
  String get installationSlidesWelcomeTitle =>
      'Γρήγορο, δωρεάν και γεμάτο με νέα χαρακτηριστικά';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Η τελευταία έκδοση του $DISTRO κάνει τη χρήση του υπολογιστή ευκολότερη από ποτέ.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Είτε είστε προγραμματιστής, δημιουργός, gamer ή διαχειριστής, θα βρείτε νέα εργαλεία για να βελτιώσετε την παραγωγικότητά σας και να αναβαθμίσετε την εμπειρία σας στο $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'Όλες οι εφαρμογές που χρειάζεστε';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Εγκαταστήστε, διαχειριστείτε και ενημερώστε όλες τις εφαρμογές σας στο Κέντρο Εφαρμογών, συμπεριλαμβανομένων χιλιάδων εφαρμογών τόσο από τα πακέτα «snap» όσο και από το αποθετήριο πακέτων του $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Αναπτύξτε κώδικα με τα καλύτερα του ανοικτού κώδικα';

  @override
  String installationSlidesDevelopmentBody(String DISTRO, Object OS) {
    return 'Το $DISTRO είναι ο ιδανικός σταθμός εργασίας για ανάπτυξη εφαρμογών ή ιστότοπων, την επιστήμη των δεδομένων και την Τεχνητή Νοημοσύνη/Μηχανική Μάθηση (AI/ML), καθώς και για DevOps και διαχείριση συστημάτων. Κάθε έκδοση του $DISTRO περιλαμβάνει τις τελευταίες εργαλειοθήκες (toolchains) και υποστηρίζει όλα τα κύρια περιβάλλοντα ανάπτυξης (IDEs).';
  }

  @override
  String get installationSlidesCreativityTitle =>
      'Ενισχύστε τη δημιουργικότητά σας';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Αν είστε δημιουργός κινουμένων σχεδίων, σχεδιαστής, δημιουργός βίντεο ή προγραμματιστής παιχνιδιών, είναι εύκολο να μεταφέρετε τις ροές εργασίας σας στο $DISTRO με υποστήριξη για λογισμικό και εφαρμογές ανοικτού κώδικα και βιομηχανικών προτύπων.';
  }

  @override
  String get installationSlidesGamingTitle => 'Εξαιρετικό για παιχνίδια';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return 'Το $DISTRO υποστηρίζει τα τελευταία προγράμματα οδήγησης NVIDIA και Mesa για τη βελτίωση της απόδοσης και της συμβατότητας. Χιλιάδες τίτλοι των Windows παίζουν εξαιρετικά στο $DISTRO μέσω εφαρμογών όπως το Steam, χωρίς πρόσθετες ρυθμίσεις.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Ιδιωτικό και ασφαλές';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return 'Το $DISTRO παρέχει όλα τα εργαλεία που χρειάζεστε για να παραμένετε ασφαλείς και να προστατεύετε την ιδιωτικότητά σας στο διαδίκτυο. Με ενσωματωμένο τείχος προστασίας (firewall), υποστήριξη VPN και μια σειρά από εφαρμογές με επίκεντρο την ιδιωτικότητα, διασφαλίζει ότι έχετε τον πλήρη έλεγχο των δεδομένων σας.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Όλες οι εκδόσεις LTS του $DISTRO συνοδεύονται από πέντε χρόνια ενημερώσεων ασφαλείας, τα οποία επεκτείνονται στα δέκα χρόνια με μια συνδρομή Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle =>
      'Απογειώστε την παραγωγικότητά σας';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return 'Το $DISTRO Desktop περιλαμβάνει το LibreOffice, μια σουίτα εφαρμογών ανοικτού κώδικα συμβατή με το Microsoft Office για έγγραφα, υπολογιστικά φύλλα και παρουσιάσεις. Επίσης, είναι διαθέσιμα δημοφιλή εργαλεία συνεργασίας.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Πρόσβαση για όλους';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'Στην καρδιά της φιλοσοφίας του $DISTRO βρίσκεται η πεποίθηση ότι η χρήση του υπολογιστή είναι για όλους. Με προηγμένα εργαλεία προσβασιμότητας και επιλογές για την αλλαγή της γλώσσας, των χρωμάτων και του μεγέθους του κειμένου, το $DISTRO κάνει την πληροφορική εύκολη — όποιος κι αν είστε, όπου κι αν βρίσκεστε.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Αναγνώστης οθόνης Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Γλωσσική υποστήριξη';

  @override
  String get installationSlidesSupportTitle => 'Βοήθεια και υποστήριξη';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Η επίσημη τεκμηρίωση του $DISTRO είναι διαθέσιμη τόσο στο διαδίκτυο όσο και μέσω του εικονιδίου «Βοήθεια» στην πλευρική εργαλειοθήκη.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Το Ask Ubuntu καλύπτει ένα ευρύ φάσμα ερωτήσεων και απαντήσεων, ενώ το Ubuntu Discourse παρέχει οδηγούς και συζητήσεις για νέους και έμπειρους χρήστες.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Για εταιρικούς χρήστες, η Canonical παρέχει εμπορική υποστήριξη, καθιστώντας εύκολη την ασφαλή εισαγωγή και διαχείριση του Ubuntu στον χώρο εργασίας.';

  @override
  String get installationSlidesSupportResources => 'Χρήσιμοι πόροι:';

  @override
  String get installationSlidesSupportDocumentation => 'Επίσημη τεκμηρίωση';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Υποστήριξη εταιρικού επιπέδου 24/7 με το Ubuntu Pro';

  @override
  String get nextSlideSemanticLabel => 'Επόμενη διαφάνεια';

  @override
  String get previousSlideSemanticLabel => 'Προηγούμενη διαφάνεια';

  @override
  String get playSlideshowSemanticLabel => 'Έναρξη παρουσίασης';

  @override
  String get pauseSlideshowSemanticLabel => 'Παύση παρουσίασης';

  @override
  String get toggleLogsSemanticLabel => 'Εναλλαγή καταγραφών εγκατάστασης';

  @override
  String get copyingFiles => 'Αντιγραφή αρχείων…';

  @override
  String get installingSystem => 'Εγκατάσταση του συστήματος…';

  @override
  String get configuringSystem => 'Ρύθμιση συστήματος…';

  @override
  String get installationFailed => 'Αποτυχία εγκατάστασης';

  @override
  String get notEnoughDiskSpaceTitle => 'Δεν υπάρχει αρκετός χώρος στον δίσκο';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Δεν υπάρχει αρκετός χώρος στον δίσκο για την εγκατάσταση του $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Ο επιλεγμένος δίσκος δεν διαθέτει αρκετό χώρο για την εγκατάσταση του $DISTRO. Τερματίστε το πρόγραμμα εγκατάστασης για να ελευθερώσετε χώρο ή επιλέξτε έναν άλλο δίσκο.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Διαθέσιμα:';

  @override
  String get notEnoughDiskSpaceRequired => 'Απαιτούνται:';

  @override
  String get refreshPageTitle => 'Διαθέσιμη ενημέρωση';

  @override
  String get refreshHeader =>
      'Μια ενημέρωση είναι διαθέσιμη για το πρόγραμμα εγκατάστασης';

  @override
  String get refreshUpdateNow => 'Ενημέρωση τώρα';

  @override
  String get refreshInfo =>
      'Ενημερώστε στην τελευταία έκδοση για βελτιωμένη αξιοπιστία και περισσότερες δυνατότητες.';

  @override
  String get refreshReady => 'Η ενημέρωση είναι έτοιμη';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Η τρέχουσα έκδοση του $snap είναι η $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Ενημέρωση στην έκδοση $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Η τρέχουσα έκδοση $version είναι ενημερωμένη.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Ενημέρωση του $snap...';
  }

  @override
  String get refreshRestart =>
      'Παρακαλούμε κλείστε το πρόγραμμα εγκατάστασης και εκκινήστε το ξανά για να συνεχίσετε';

  @override
  String get refreshCloseLabel => 'Κλείσιμο προγράμματος εγκατάστασης';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Διασφάλιση προαπαιτούμενων για το $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Ανανέωση του $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Έλεγχος για εκ νέου ανανέωση του $snap...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Προετοιμασία του $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Λήψη του $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Επαλήθευση του $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Προσάρτηση του $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Διακοπή των υπηρεσιών του $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Αφαίρεση ψευδωνύμων (aliases) του $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Αποσύνδεση του $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Ενημέρωση πόρων του $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Ενημέρωση της γραμμής εντολών πυρήνα (kernel command line) του $snap...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Αντιγραφή δεδομένων του $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Ρύθμιση προφίλ ασφαλείας του $snap...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Σύνδεση του $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Σύνδεση βυσμάτων (plugs) και υποδοχών (slots) του $snap...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Ορισμός αυτόματων ψευδωνύμων (aliases) του $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Ρύθμιση ψευδωνύμων (aliases) του $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Εκκίνηση των υπηρεσιών του $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Εκκαθάριση του $snap...';
  }

  @override
  String get recoveryKeyTitle => 'Κλειδί ανάκτησης';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Σημαντικό';

  @override
  String get recoveryKeyHeader => 'Αποθηκεύστε το κλειδί ανάκτησης';

  @override
  String get recoveryKeyInfoHeader =>
      'Ενδέχεται να χάσετε όλα τα δεδομένα σας χωρίς κλειδί ανάκτησης';

  @override
  String get recoveryKeyTextFieldLabel => 'Κλειδί ανάκτησης';

  @override
  String get recoveryKeyStorageAdvice =>
      'Θα χρειαστεί να παρέχετε αυτό το κλειδί ανάκτησης εάν η αποκρυπτογράφηση αποτύχει κατά την εκκίνηση. Χωρίς το κλειδί, θα χάσετε την πρόσβαση σε όλα τα δεδομένα σας. Αποθηκεύστε το σε ένα ασφαλές μέρος, όπως έναν διαχειριστή κωδικών πρόσβασης.';

  @override
  String get recoveryKeyConfirmation =>
      'Αποθήκευσα το κλειδί ανάκτησής μου σε ασφαλές μέρος';

  @override
  String get recoveryKeyLinkLabel => 'Μάθετε περισσότερα';

  @override
  String get recoveryKeySaveToFileLabel => 'Αποθήκευση σε αρχείο';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Εμφάνιση κώδικα QR';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Desktop - Κλειδί ανάκτησης';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Σαρώστε τον κώδικα QR για να αντιγράψετε το κλειδί ανάκτησης και αποθηκεύστε το σε ένα ασφαλές μέρος, όπως έναν διαχειριστή κωδικών πρόσβασης. Μπορείτε επίσης να το βγάλετε φωτογραφία για μελλοντική χρήση.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Αντιγράφηκε στο πρόχειρο';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Το αρχείο κλειδιού ανάκτησης δεν αποθηκεύτηκε';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Το αρχείο κλειδιού ανάκτησης δεν μπορεί να αποθηκευτεί σε προσωρινή τοποθεσία';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Άγνωστο σφάλμα';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'Δεν έχετε δικαίωμα εγγραφής σε αυτόν τον φάκελο. Δοκιμάστε μια διαφορετική τοποθεσία ή χρησιμοποιήστε μια άλλη μέθοδο.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Δοκιμάστε μια διαφορετική τοποθεσία, όπως μια αφαιρούμενη μονάδα δίσκου, ή χρησιμοποιήστε μια άλλη μέθοδο.';

  @override
  String get recoveryKeyFilePickerTitle =>
      'Αποθήκευση αρχείου κλειδιού ανάκτησης';

  @override
  String get recoveryKeyFilePickerFilter => 'Αρχεία κειμένου';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Σαρώστε τον κώδικα QR ή εισαγάγετε τον παρακάτω κώδικα στη διεύθυνση <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Αυτοματοποιημένη εγκατάσταση';

  @override
  String get landscapeHeader => 'Σύνδεση στο Landscape';

  @override
  String get landscapeDomainHeader =>
      'Εισαγάγετε τον τομέα (FQDN) του Landscape';

  @override
  String get landscapeDomainHintText => 'Τομέας (FQDN) του Landscape';

  @override
  String get landscapeDomainInstructions =>
      'Παρέχετε τον τομέα Landscape του οργανισμού σας για να συνδεθείτε και να ανακτήσετε ένα αρχείο αυτόματης εγκατάστασης. Μπορείτε να λάβετε το FQDN από την τεχνική υποστήριξη (IT support) της εταιρείας σας.';

  @override
  String get landscapeDomainTextField => 'Τομέας (FQDN) του Landscape';

  @override
  String get next => 'Επόμενο';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Μη έγκυρος τομέας, παρακαλώ ελέγξτε τον ή επικοινωνήστε με την τεχνική υποστήριξη';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Συνδεθείτε στο διαδίκτυο για να συνεχίσετε';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Απαιτείται σύνδεση στο διαδίκτυο για την ανάκτηση του αρχείου αυτόματης εγκατάστασης από το Landscape';

  @override
  String get landscapeCodeExpiredWarning =>
      'Ο κωδικός έληξε, παρακαλώ δοκιμάστε ξανά';

  @override
  String get landscapeLoginFailedWarning =>
      'Η σύνδεση απέτυχε, παρακαλώ δοκιμάστε ξανά';

  @override
  String get landscapeErrorPageTitle =>
      'Η αυτοματοποιημένη εγκατάσταση δεν είναι διαθέσιμη για τον λογαριασμό σας';

  @override
  String get landscapeErrorPageBody =>
      'Επικοινωνήστε με την τεχνική υποστήριξη (IT support) της εταιρείας σας ή δοκιμάστε μια διαφορετική επιλογή εγκατάστασης.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Κωδικός σφάλματος: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Το Ubuntu θα εγκατασταθεί με τις ρυθμίσεις που παρέχονται από τον οργανισμό σας';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Μπορείτε να ελέγξετε το αρχείο αυτόματης εγκατάστασης (autoinstall) που εισήχθη από το Landscape παρακάτω.';

  @override
  String get successIconSemanticLabel => 'Επιτυχία';

  @override
  String get errorIconSemanticLabel => 'Σφάλμα';

  @override
  String get closeIconSemanticLabel => 'Κλείσιμο';

  @override
  String get maximizeIconSemanticLabel => 'Μεγιστοποίηση';

  @override
  String get minimizeIconSemanticLabel => 'Ελαχιστοποίηση';

  @override
  String get tpmActionPageTitle =>
      'Δεν ήταν δυνατή η ενεργοποίηση της κρυπτογράφησης με υποστήριξη υλικού (hardware-backed encryption)';

  @override
  String get tpmActionBadgeLabel => 'Απαιτείται ενέργεια';

  @override
  String get tpmActionDetailsLabel => 'Τεχνικές λεπτομέρειες';

  @override
  String get tpmActionConfirmLabel => 'Επιβεβαίωση';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return 'Λύση $n: $text';
  }

  @override
  String tpmActionSingleSolutionLabel(String text) {
    return 'Λύση: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel =>
      'Μάθετε περισσότερα για την κρυπτογράφηση με υποστήριξη υλικού';

  @override
  String get tpmActionErrorSupportLabel =>
      'Δοκιμάστε τις παρακάτω λύσεις, επικοινωνήστε με την τεχνική υποστήριξη (IT support) ή επιλέξτε μια διαφορετική μέθοδο κρυπτογράφησης.';

  @override
  String get tpmActionErrorSupportSingleLabel =>
      'Δοκιμάστε την παρακάτω λύση, επικοινωνήστε με την τεχνική υποστήριξη ή επιλέξτε μια διαφορετική μέθοδο κρυπτογράφησης.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Επικοινωνήστε με την τεχνική υποστήριξη ή επιλέξτε μια διαφορετική μέθοδο κρυπτογράφησης.';

  @override
  String get tpmActionErrorKindInternal => 'Εσωτερικό σφάλμα.';

  @override
  String get tpmActionErrorKindShutdownRequired => 'Απαιτείται απενεργοποίηση.';

  @override
  String get tpmActionErrorKindRebootRequired => 'Απαιτείται επανεκκίνηση.';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'Μη αναμενόμενη ενέργεια.';

  @override
  String get tpmActionErrorKindMissingArgument => 'Λείπει όρισμα.';

  @override
  String get tpmActionErrorKindInvalidArgument => 'Μη έγκυρο όρισμα.';

  @override
  String get tpmActionErrorKindActionFailed => 'Η ενέργεια απέτυχε.';

  @override
  String get tpmActionErrorKindRunningInVm =>
      'Το τρέχον περιβάλλον είναι μια εικονική μηχανή (virtual machine).';

  @override
  String get tpmActionErrorKindSystemNotEfi =>
      'Αυτός ο υπολογιστής χρησιμοποιεί παλαιότερο υλικολογισμικό (legacy BIOS), το οποίο δεν είναι συμβατό με αυτή τη μέθοδο κρυπτογράφησης.';

  @override
  String get tpmActionErrorKindEfiVariableAccess =>
      'Υπάρχει πρόβλημα με το υλικολογισμικό (firmware) αυτού του υπολογιστή.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'Αυτός ο υπολογιστής δεν διαθέτει το απαιτούμενο υλικό ασφαλείας (TPM 2.0) για αυτή τη μέθοδο κρυπτογράφησης.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'Το TPM αυτού του υπολογιστή είναι απενεργοποιημένο.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'Το TPM αυτού του υπολογιστή χρησιμοποιείται ήδη από άλλο σύστημα ή εφαρμογή.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'Το TPM αυτού του υπολογιστή είναι επί του παρόντος κλειδωμένο.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'Το TPM αυτού του υπολογιστή δεν διαθέτει αρκετό διαθέσιμο χώρο αποθήκευσης.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'Αυτός ο υπολογιστής δεν είναι συμβατός με την κρυπτογράφηση με υποστήριξη υλικού.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'Είναι ενεργοποιημένη η αποσφαλμάτωση (debugging) του UEFI.';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'Αυτός ο υπολογιστής δεν διαθέτει μια απαιτούμενη λειτουργία ασφαλείας (προστασία DMA).';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'Αυτός ο υπολογιστής δεν διαθέτει μια απαιτούμενη λειτουργία ασφαλείας (IOMMU).';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'Υπάρχει πρόβλημα με τις ρυθμίσεις ασφαλείας (security configuration) αυτού του υπολογιστή.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'Υπάρχει λογισμικό που εκτελείται κατά την εκκίνηση και ενδέχεται να εμποδίζει την ασφαλή σύνδεση με το TPM του υπολογιστή.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'Είναι ενεργοποιημένη η Μονάδα Διαρκούς Παρουσίας (Absolute Persistence Module) σε αυτόν τον υπολογιστή.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Η ασφαλής εκκίνηση (Secure Boot) είναι απενεργοποιημένη σε αυτόν τον υπολογιστή ή δεν έχει ρυθμιστεί σε κατάσταση ανάπτυξης (deployed mode).';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Ορισμένα από τα πιστοποιητικά που επαληθεύουν το λογισμικό σε αυτόν τον υπολογιστή είναι ληγμένα ή χρησιμοποιούν ασθενή προστασία.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'Αυτός ο υπολογιστής χρησιμοποιεί μια μη αυτόματη λίστα επιτρεπόμενων (manual allowlist) για την επαλήθευση του λογισμικού κατά την εκκίνηση.';

  @override
  String get tpmActionErrorKindAddonDriversPresent =>
      'Υπάρχουν εγκατεστημένα πρόσθετα προγράμματα οδήγησης.';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'Υπάρχει πρόβλημα με το TPM αυτού του υπολογιστή.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'Υπάρχει πρόβλημα με το υλικολογισμικό (firmware) αυτού του υπολογιστή.';

  @override
  String get tpmActionFixActionReboot => 'Επανεκκίνηση';

  @override
  String get tpmActionFixActionShutdown => 'Κλείσιμο συσκευής';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Επανεκκίνηση στις ρυθμίσεις υλικολογισμικού';

  @override
  String get tpmActionFixActionRebootToFwSettingsInstructions =>
      'Εάν οι ρυθμίσεις υλικολογισμικού δεν φορτώσουν αυτόματα, πραγματοποιήστε επανεκκίνηση και πατήστε επανειλημμένα το πλήκτρο ρυθμίσεων κατά την εκκίνηση (συνήθως το F2, το F10 ή το Delete).';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'Μη αυτόματη ενεργοποίηση της προστασίας DMA';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'Μη αυτόματη εκκαθάριση του TPM';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'Μη αυτόματη ενεργοποίηση της ασφαλούς εκκίνησης (Secure Boot)';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'Μη αυτόματη ενεργοποίηση του IOMMU';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'Μη αυτόματη ενεργοποίηση των συστοιχιών PCR';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'Μη αυτόματη ενεργοποίηση του TPM';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'Μη αυτόματη εκκαθάριση του TPM';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'Μη αυτόματη εκκαθάριση του TPM';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Μη αυτόματη απενεργοποίηση της Μονάδας Διαρκούς Παρουσίας (Absolute Persistence Module)';

  @override
  String get tpmActionFixActionContactOem =>
      'Επικοινωνήστε με τον κατασκευαστή';

  @override
  String get tpmActionFixActionContactOsVendor =>
      'Επικοινωνήστε με τον προμηθευτή του λειτουργικού συστήματος';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'Ενεργοποίηση του TPM κατά την επανεκκίνηση';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Ενεργοποίηση και εκκαθάριση του TPM κατά την επανεκκίνηση';

  @override
  String get tpmActionFixActionClearTpmViaFirmware =>
      'Εκκαθάριση του TPM κατά την επανεκκίνηση';

  @override
  String get tpmActionFixActionClearTpm => 'Εκκαθάριση του TPM';

  @override
  String get tpmActionFixActionProceed => 'Παράλειψη';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Επανεκκινήστε τον υπολογιστή για να ολοκληρωθούν οι προηγούμενες ενέργειες.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Η επανεκκίνηση του υπολογιστή ενδέχεται να διορθώσει το πρόβλημα.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Απενεργοποιήστε τον υπολογιστή για να ολοκληρωθούν οι προηγούμενες ενέργειες.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'Μπορείτε να το κάνετε αυτό στις ρυθμίσεις υλικολογισμικού (firmware) του υπολογιστή σας.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'Ενδέχεται να μπορείτε να το κάνετε αυτό στις ρυθμίσεις υλικολογισμικού (firmware) του υπολογιστή σας. Ανατρέξτε στην τεκμηρίωση του κατασκευαστή του επεξεργαστή (CPU vendor) για οδηγίες.';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootModeHint =>
      'Βεβαιωθείτε ότι η λειτουργία της ασφαλούς εκκίνησης (secure boot) είναι ρυθμισμένη σε «deployed» (σε χρήση).';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommuHint =>
      'Αυτή η λειτουργία ενδέχεται να αναφέρεται ως «Virtualization Technology», «VT-d» ή «AMD-Vi».';

  @override
  String get tpmActionFixActionProceedDescription =>
      'Η παράβλεψη αυτού του ζητήματος ενδέχεται να οδηγήσει σε μια λιγότερο ασφαλή εγκατάσταση.';

  @override
  String get tpmActionRestartLabel => 'Επανεκκίνηση';

  @override
  String get tpmActionRestartAndEnableTpmLabel =>
      'Επανεκκίνηση και ενεργοποίηση του TPM';

  @override
  String get tpmActionRestartAndClearTpmLabel =>
      'Επανεκκίνηση και εκκαθάριση του TPM';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'Παράλειψη και συνέχιση';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'Η εκκαθάριση του TPM διαγράφει όλα τα κλειδιά κρυπτογράφησης';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'Θα χάσετε την πρόσβαση σε όλα τα δεδομένα στους κρυπτογραφημένους δίσκους για τους οποίους δεν διαθέτετε κλειδιά αποκατάστασης. Επίσης, θα σταματήσουν να λειτουργούν άλλες δυνατότητες που εξαρτώνται από το TPM, όπως η επαλήθευση ταυτότητας και τα πιστοποιητικά.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'Κατανοώ τις συνέπειες της εκκαθάρισης του TPM';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'Ενδέχεται να σας ζητηθεί να επιβεβαιώσετε αυτή την ενέργεια κατά την επανεκκίνηση.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'Στη συνέχεια, θα χρειαστεί να ξεκινήσετε την εγκατάσταση ξανά.';

  @override
  String get tpmActionErrorTitle => 'Αυτή η λύση απέτυχε';

  @override
  String get tpmActionErrorDescription =>
      'Δοκιμάστε μια διαφορετική λύση ή επικοινωνήστε με την τεχνική υποστήριξη.';

  @override
  String get manualPartitioningWarningBody =>
      'Δοκιμάστε κάτι άλλο. Μπορείτε επίσης να <a href=\"\">στείλετε μια αναφορά σφάλματος</a>.';
}
