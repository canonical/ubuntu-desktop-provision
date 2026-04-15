// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class UbuntuProvisionLocalizationsEl extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Προσβασιμότητα';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Προσβασιμότητα στο $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Προσαρμόστε τη διανομή $DISTRO στις ανάγκες σας πριν την εγκατάσταση. Μπορείτε πάντα να κάνετε αλλαγές και στις Ρυθμίσεις συστήματος.';
  }

  @override
  String get accessibilitySeeingLabel => 'Όραση';

  @override
  String get accessibilityHearingLabel => 'Ακοή';

  @override
  String get accessibilityTypingLabel => 'Πληκτρολόγηση';

  @override
  String get accessibilityPointingLabel => 'Κατάδειξη και κλικ';

  @override
  String get accessibilityZoomLabel => 'Μεγέθυνση';

  @override
  String get accessibilityHighContrastLabel => 'Μεγάλη αντίθεση';

  @override
  String get accessibilityLargeTextLabel => 'Μεγάλο κείμενο';

  @override
  String get accessibilityReduceAnimationLabel => 'Μείωση κινούμενων εικόνων';

  @override
  String get accessibilityScreenReaderLabel => 'Ανάγνωση οθόνης';

  @override
  String get accessibilityVisualAlertsLabel => 'Οπτικές ειδοποιήσεις';

  @override
  String get accessibilityStickKeysLabel => 'Ασύγχρονα πλήκτρα';

  @override
  String get accessibilitySlowKeysLabel => 'Πλήκτρα καθυστέρησης';

  @override
  String get accessibilityMouseKeysLabel => 'Πλήκτρα ποντικιού';

  @override
  String get accessibilityDesktopZoomLabel => 'Μεγέθυνση οθόνης';

  @override
  String get errorPageTitle => 'Κάτι πήγε στραβά';

  @override
  String get errorPageUnexpected =>
      'Λυπούμαστε, αλλά δεν είμαστε βέβαιοι για το ποιο είναι το σφάλμα. Μπορείτε να δοκιμάσετε να επανεκκινήσετε τον υπολογιστή σας και να ξεκινήσετε τη διαδικασία εγκατάστασης ξανά. Μπορείτε επίσης να <a>αναφέρετε το πρόβλημα</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Για να στείλετε μια αυτόματη αναφορά σφάλματος που να περιλαμβάνει τις σχετικές πληροφορίες αποσφαλμάτωσης, παρακαλούμε εκτελέστε την εντολή <pre>sudo ubuntu-bug $SNAP</pre> σε ένα τερματικό ή από την κονσόλα εντολών (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Εμφάνιση καταγραφών';

  @override
  String get errorPageHideLog => 'Απόκρυψη καταγραφών';

  @override
  String get errorPageTechnicalDetails => 'Τεχνικές λεπτομέρειες';

  @override
  String get restart => 'Επανεκκίνηση';

  @override
  String get close => 'Κλείσιμο';

  @override
  String get timezonePageTitle => 'Επιλέξτε την ζώνη ώρας';

  @override
  String get timezoneLocationLabel => 'Τοποθεσία';

  @override
  String get timezoneTimezoneLabel => 'Ζώνη ώρας';

  @override
  String get keyboardTitle => 'Διάταξη πληκτρολογίου';

  @override
  String get keyboardHeader => 'Επιλέξτε τη διάταξη πληκτρολογίου';

  @override
  String get keyboardTestHint =>
      'Πληκτρολογήστε εδώ για να δοκιμάσετε το πληκτρολόγιό σας';

  @override
  String get keyboardDetectTitle => 'Εντοπισμός διάταξης πληκτρολογίου';

  @override
  String get keyboardDetectButton => 'Εντοπισμός';

  @override
  String get keyboardVariantLabel => 'Επιλέξτε την παραλλαγή πληκτρολογίου:';

  @override
  String get keyboardPressKeyLabel =>
      'Παρακαλώ πιέστε ένα από τα ακόλουθα πλήκτρα:';

  @override
  String get keyboardKeyPresentLabel =>
      'Υπάρχει στο πληκτρολόγιό σας το ακόλουθο πλήκτρο;';

  @override
  String get themePageTitle => 'Επιλέξτε το θέμα σας';

  @override
  String get themePageHeader =>
      'Μπορείτε πάντα να το αλλάξετε στις ρυθμίσεις εμφάνισης.';

  @override
  String get themeDark => 'Σκοτεινό';

  @override
  String get themeLight => 'Φωτεινό';

  @override
  String localePageTitle(String DISTRO) {
    return 'Καλώς ήρθατε στο $DISTRO';
  }

  @override
  String get localeHeader => 'Επιλέξτε τη γλώσσα σας:';

  @override
  String get identityPageTitle => 'Δημιουργήστε τον λογαριασμό σας';

  @override
  String get identityAutoLogin => 'Αυτόματη σύνδεση';

  @override
  String get identityRequirePassword =>
      'Να απαιτείται ο κωδικός πρόσβασής μου για σύνδεση';

  @override
  String get identityRealNameLabel => 'Το όνομά σας';

  @override
  String get identityRealNameRequired => 'Ένα όνομα είναι απαραίτητο';

  @override
  String get identityRealNameTooLong => 'Αυτό το όνομα είναι πολύ μεγάλο.';

  @override
  String get identityHostnameLabel => 'Το όνομα του υπολογιστή σας';

  @override
  String get identityHostnameInfo =>
      'Το όνομα που χρησιμοποιεί όταν επικοινωνεί με άλλους υπολογιστές.';

  @override
  String get identityHostnameRequired =>
      'Ένα όνομα υπολογιστή είναι απαραίτητο';

  @override
  String get identityHostnameTooLong =>
      'Αυτό το όνομα υπολογιστή είναι πολύ μεγάλο.';

  @override
  String get identityInvalidHostname =>
      'Το όνομα υπολογιστή είναι δεν είναι έγκυρο';

  @override
  String get identityUsernameLabel => 'Το όνομα χρήστη σας';

  @override
  String get identityUsernameRequired => 'Το όνομα χρήστη είναι απαραίτητο';

  @override
  String get identityInvalidUsername => 'Το όνομα χρήστη δεν είναι έγκυρο';

  @override
  String get identityUsernameInUse => 'Αυτό το όνομα χρήστη υπάρχει ήδη.';

  @override
  String get identityUsernameSystemReserved =>
      'Αυτό το όνομα χρήστη είναι δεσμευμένο από το σύστημα.';

  @override
  String get identityUsernameTooLong => 'Αυτό το όνομα είναι πολύ μεγάλο.';

  @override
  String get identityUsernameInvalidChars =>
      'Αυτό το όνομα περιέχει μη έγκυρους χαρακτήρες.';

  @override
  String get identityPasswordLabel => 'Κωδικός';

  @override
  String get identityPasswordRequired => 'Ένας κωδικός είναι απαραίτητος';

  @override
  String get identityConfirmPasswordLabel => 'Επιβεβαίωση κωδικού';

  @override
  String get identityPasswordMismatch => 'Αυτοί οι κωδικοί δεν ταιριάζουν';

  @override
  String get identityPasswordShow => 'Εμφάνιση';

  @override
  String get identityPasswordHide => 'Απόκρυψη';

  @override
  String get identityActiveDirectoryOption => 'Χρήση Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'Θα εισαγάγετε τον τομέα και άλλες λεπτομέρειες στο επόμενο βήμα.';

  @override
  String get activeDirectoryTitle => 'Σύνδεση στο Active Directory';

  @override
  String get activeDirectoryHeader => 'Σύνδεση στο Active Directory;';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return 'Το $DISTRO έχει σχεδιαστεί για να ενσωματώνεται απρόσκοπτα με το Active Directory για ευκολότερη διαχείριση.';
  }

  @override
  String get activeDirectoryTestConnection => 'Έλεγχος συνδεσιμότητας τομέα';

  @override
  String get activeDirectoryDomainLabel => 'Τομέας';

  @override
  String get activeDirectoryDomainEmpty => 'Απαιτείται';

  @override
  String get activeDirectoryDomainTooLong => 'Πολύ μεγάλο';

  @override
  String get activeDirectoryDomainInvalidChars => 'Μη έγκυροι χαρακτήρες';

  @override
  String get activeDirectoryDomainStartDot => 'Ξεκινά με μια τελεία (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Τελειώνει με τελεία (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Ξεκινάει με παύλα (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Τελειώνει με παύλα (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Περιέχει διαδοχικές τελείες (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Ο τομέας δεν βρέθηκε';

  @override
  String get activeDirectoryAdminLabel => 'Χρήστης για ένταξη σε τομέα';

  @override
  String get activeDirectoryAdminEmpty => 'Απαιτείται';

  @override
  String get activeDirectoryAdminInvalidChars => 'Μη έγκυροι χαρακτήρες';

  @override
  String get activeDirectoryPasswordLabel => 'Κωδικός';

  @override
  String get activeDirectoryPasswordEmpty => 'Απαιτείται';

  @override
  String get activeDirectoryErrorTitle =>
      'Σφάλμα κατά τη ρύθμιση της σύνδεσης στο Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'Λυπούμαστε, δεν είναι δυνατή η ρύθμιση του Active Directory αυτή τη στιγμή. Μόλις το σύστημά σας τεθεί σε λειτουργία, επισκεφθείτε τη σελίδα <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> για βοήθεια.';

  @override
  String get networkPageTitle => 'Σύνδεση διαδικτύου';

  @override
  String get networkPageHeader => 'Σύνδεση με το διαδίκτυο';

  @override
  String get networkPageBody =>
      'Μια σύνδεση στο διαδίκτυο θα βελτιώσει την εγκατάστασή σας με έλεγχο συμβατότητας και πρόσθετα πακέτα λογισμικού.';

  @override
  String get networkWiredOption => 'Χρήση ενσύρματης σύνδεσης';

  @override
  String get networkWiredNone => 'Δεν εντοπίστηκε ενσύρματη σύνδεση';

  @override
  String get networkWiredOff => 'Η ενσύρματη σύνδεση είναι ανενεργή';

  @override
  String get networkWiredDisabled =>
      'Για να χρησιμοποιήσετε το Ethernet σε αυτόν τον υπολογιστή, πρέπει να ενεργοποιηθεί μια ενσύρματη σύνδεση';

  @override
  String get networkWiredEnable => 'Ενεργοποίηση ενσύρματης';

  @override
  String get networkWifiOption => 'Σύνδεση σε ένα δίκτυο Wi-Fi';

  @override
  String get networkWifiOff => 'Η ασύρματη δικτύωση είναι απενεργοποιημένη';

  @override
  String get networkWifiNone => 'Δεν εντοπίστηκαν συσκευές Wi-Fi';

  @override
  String get networkWifiDisabled =>
      'Για να χρησιμοποιήσετε το Wi-Fi σε αυτόν τον υπολογιστή, πρέπει να ενεργοποιηθεί η ασύρματη δικτύωση';

  @override
  String get networkWifiEnable => 'Ενεργοποίηση Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Σύνδεση σε ένα κρυφό δίκτυο Wi-Fi';

  @override
  String get networkHiddenWifiNameLabel => 'Όνομα δικτύου';

  @override
  String get networkHiddenWifiNameRequired => 'Απαιτείται όνομα δικτύου';

  @override
  String get networkNoneOption => 'Χωρίς σύνδεση στο διαδίκτυο';

  @override
  String get eulaPageTitle => 'Άδεια χρήσης';

  @override
  String get eulaReviewTerms => 'Μελετήστε τους όρους της άδειας χρήσης';

  @override
  String get eulaReadAndAcceptTerms =>
      'Για να συνεχίσετε τη ρύθμιση αυτού του μηχανήματος, πρέπει να διαβάσετε και να αποδεχτείτε τους όρους της άδειας χρήσης.';

  @override
  String get eulaAcceptTerms => 'Έχω διαβάσει και έχω αποδεχτεί τους όρους';

  @override
  String get successIconSemanticLabel => 'Επιτυχία';

  @override
  String get closeIconSemanticLabel => 'Κλείσιμο';

  @override
  String get maximizeIconSemanticLabel => 'Μεγιστοποίηση';

  @override
  String get minimizeIconSemanticLabel => 'Ελαχιστοποίηση';

  @override
  String get expandIconSemanticLabel => 'Ανάπτυξη';

  @override
  String get collapseIconSemanticLabel => 'Σύμπτυξη';
}
