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
    return 'Προσβασιμότητα στην $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Τροποποιήστε $DISTRO στις ανάγκες σας πριν το σετάρισμα. Μπορείτε πάντα να τις αλλάξετε στις Ρυθμίσεις Συστήματος.';
  }

  @override
  String get accessibilitySeeingLabel => 'Βλέποντας';

  @override
  String get accessibilityHearingLabel => 'Ακούγοντας';

  @override
  String get accessibilityTypingLabel => 'Πληκτρολόγηση';

  @override
  String get accessibilityPointingLabel => 'Pointing and clicking';

  @override
  String get accessibilityZoomLabel => 'Μεγέθυνση';

  @override
  String get accessibilityHighContrastLabel => 'Μεγάλη αντίθεση';

  @override
  String get accessibilityLargeTextLabel => 'Μεγάλο κείμενο';

  @override
  String get accessibilityReduceAnimationLabel => 'Reduce animation';

  @override
  String get accessibilityScreenReaderLabel => 'Screen reader';

  @override
  String get accessibilityVisualAlertsLabel => 'Εικονικές ειδοποιήσεις';

  @override
  String get accessibilityStickKeysLabel => 'Sticky keys';

  @override
  String get accessibilitySlowKeysLabel => 'Αργά πλήκτρα';

  @override
  String get accessibilityMouseKeysLabel => 'Πλήκτρα ποντικιού';

  @override
  String get accessibilityDesktopZoomLabel => 'Μεγέθυνση Επιφάνεια Εργασίας';

  @override
  String get errorPageTitle => 'Κάτι πήγε στραβά';

  @override
  String get errorPageUnexpected =>
      'We\'re sorry, but we\'re not sure what the error is. You can try restarting your computer and start the installation process again. You can can also <a>report the issue</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'To send an automated bug report including relevant debug information, please run <pre>sudo ubuntu-bug $SNAP</pre> in a terminal, or from the command console (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Show log';

  @override
  String get errorPageHideLog => 'Hide log';

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
  String get keyboardHeader => 'Επιλογή διάταξης πληκτρολογίου:';

  @override
  String get keyboardTestHint =>
      'Πληκτρολογήστε εδώ για να δοκιμάσετε το πληκτρολόγιό σας';

  @override
  String get keyboardDetectTitle => 'Εντοπισμός διάταξης πληκτρολογίου';

  @override
  String get keyboardDetectButton => 'Detect';

  @override
  String get keyboardVariantLabel => 'Select your keyboard variant:';

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
  String get localeHeader => 'Διαλέξτε την γλώσσα σας:';

  @override
  String get identityPageTitle => 'Δημιουργήστε τον λογαριασμό σας';

  @override
  String get identityAutoLogin => 'Συνδεθείτε αυτόματα';

  @override
  String get identityRequirePassword => 'Require my password to log in';

  @override
  String get identityRealNameLabel => 'Το όνομα σας';

  @override
  String get identityRealNameRequired => 'Το όνομα σας είναι απαραίτητο';

  @override
  String get identityRealNameTooLong => 'Αυτό το όνομα είναι πολύ μακρύ.';

  @override
  String get identityHostnameLabel => 'Το όνομα του υπολογιστή σας';

  @override
  String get identityHostnameInfo =>
      'The name it uses when it talks to other computers.';

  @override
  String get identityHostnameRequired => 'A computer name is required';

  @override
  String get identityHostnameTooLong =>
      'Αυτό το όνομα υπολογιστή είναι πολύ μακρύ.';

  @override
  String get identityInvalidHostname => 'Το όνομα υπολογιστή είναι άκυρο';

  @override
  String get identityUsernameLabel => 'Το όνομα χρήστη';

  @override
  String get identityUsernameRequired => 'Το όνομα χρηστή είναι απαραίτητο';

  @override
  String get identityInvalidUsername => 'Το όνομα χρήστη είναι άκυρο';

  @override
  String get identityUsernameInUse => 'Το όνομα χρήστη υπάρχει ήδη.';

  @override
  String get identityUsernameSystemReserved =>
      'That name is reserved for system usage.';

  @override
  String get identityUsernameTooLong => 'Αυτό το όνομα είναι πολύ μακρύ.';

  @override
  String get identityUsernameInvalidChars =>
      'Το όνομα περιέχει λανθασμένους χαρακτήρες.';

  @override
  String get identityPasswordLabel => 'Κωδικός';

  @override
  String get identityPasswordRequired => 'Ο κωδικός είναι απαραίτητος';

  @override
  String get identityConfirmPasswordLabel => 'Επιβεβαίωση κωδικού';

  @override
  String get identityPasswordMismatch => 'Αυτοί οι κωδικοί δεν ταιριάζουν';

  @override
  String get identityPasswordShow => 'Show';

  @override
  String get identityPasswordHide => 'Απόκρυψη';

  @override
  String get identityActiveDirectoryOption => 'Use Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'You\'ll enter domain and other details in the next step.';

  @override
  String get activeDirectoryTitle => 'Log into Active Directory';

  @override
  String get activeDirectoryHeader => 'Log into Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO έχει σχεδιαστεί να ενσωματώνει χωρίς πρόβλημα με Ενεργό Ευρετήριο για ευκολότερη διαχείριση.';
  }

  @override
  String get activeDirectoryTestConnection => 'Test domain connectivity';

  @override
  String get activeDirectoryDomainLabel => 'Domain';

  @override
  String get activeDirectoryDomainEmpty => 'Required';

  @override
  String get activeDirectoryDomainTooLong => 'Πολύ μεγάλο';

  @override
  String get activeDirectoryDomainInvalidChars => 'Λανθασμένοι χαρακτήρες';

  @override
  String get activeDirectoryDomainStartDot => 'Starts with a dot (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Ends with a dot (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Starts with a hyphen (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Ends with a hyphen (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Contains multiple sequenced dots (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domain not found';

  @override
  String get activeDirectoryAdminLabel => 'Domain join user';

  @override
  String get activeDirectoryAdminEmpty => 'Required';

  @override
  String get activeDirectoryAdminInvalidChars => 'Λανθασμένοι χαρακτήρες';

  @override
  String get activeDirectoryPasswordLabel => 'Κωδικός';

  @override
  String get activeDirectoryPasswordEmpty => 'Required';

  @override
  String get activeDirectoryErrorTitle =>
      'Error configuring connection to Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'Sorry, Active Directory can\'t be set up at the moment. Once your system is up and running, visit <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> for help.';

  @override
  String get networkPageTitle => 'Σύνδεση Διαδικτύου';

  @override
  String get networkPageHeader => 'Σύνδεση στο Διαδίκτυο';

  @override
  String get networkPageBody =>
      'An internet connection will improve your installation with compatibility check and extra software packages.';

  @override
  String get networkWiredOption => 'Χρησιμοποιήστε Ethernet';

  @override
  String get networkWiredNone => 'Δεν υπάρχει σύνδεση Ethernet';

  @override
  String get networkWiredOff => 'Η σύνδεση Ethernet είναι απενεργοποιημένη';

  @override
  String get networkWiredDisabled =>
      'To use Ethernet on this computer, a wired connection must be enabled';

  @override
  String get networkWiredEnable => 'Enable wired';

  @override
  String get networkWifiOption => 'Συνδεθείτε σε ένα δίκτυο Wi-Fi';

  @override
  String get networkWifiOff => 'Ασύρματη δικτύωση απενεργοποιημένη';

  @override
  String get networkWifiNone => 'No Wi-Fi devices detected';

  @override
  String get networkWifiDisabled =>
      'To use Wi-Fi on this computer, wireless networking must be enabled';

  @override
  String get networkWifiEnable => 'Ενεργοποίηση Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Συνδεθείτε σε ένα κρυφό δίκτυο Wi-Fi';

  @override
  String get networkHiddenWifiNameLabel => 'Όνομα δικτύου';

  @override
  String get networkHiddenWifiNameRequired => 'A network name is required';

  @override
  String get networkNoneOption => 'Do not connect to the internet';

  @override
  String get eulaPageTitle => 'Συμφωνητικό';

  @override
  String get eulaReviewTerms => 'Review the license terms';

  @override
  String get eulaReadAndAcceptTerms =>
      'To continue setting up this machine, you must read and accept the license agreement terms.';

  @override
  String get eulaAcceptTerms => 'Έχω διαβάσει και έχω αποδεχτεί τους όρους';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';

  @override
  String get expandIconSemanticLabel => 'Expand';

  @override
  String get collapseIconSemanticLabel => 'Collapse';
}
