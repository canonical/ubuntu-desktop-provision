// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class UbuntuInitLocalizationsIt extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get welcomePageTitle => 'Benvenuti';

  @override
  String welcomePageHeader(String distro) {
    return 'Benvenuto in $distro';
  }

  @override
  String get welcomeWhatsNew => 'COSA C\'È DI NUOVO?';

  @override
  String get welcomeStartTitle => 'A streamlined start';

  @override
  String get welcomeStartSubtitle =>
      'Supporta un\'esperienza di configurazione più pulita.';

  @override
  String get welcomeStoreTitle => 'Nuovo look per l\'App Store';

  @override
  String get welcomeStoreSubtitle =>
      'Non è mai stato così facile trovare il tuo software preferito.';

  @override
  String get welcomeSecurityTitle => 'Maggiore sicurezza';

  @override
  String get welcomeSecuritySubtitle =>
      'Nuove opzioni per la crittografia basata su hardware o ZFS.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Visualizza il registro delle modifiche</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(String distro) {
    return 'Aiutaci a migliorare $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Aiutaci a migliorare $distro condividendo con noi i dati del tuo sistema. Ciò include cose come il modello della tua macchina, il software installato e la posizione che hai scelto per il tuo fuso orario.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Sì, condividi i dati di sistema con il team di $distro';
  }

  @override
  String get telemetryLabelOff => 'No, non condividere i dati di sistema';

  @override
  String get telemetryReportLabel => 'Mostra il primo rapporto';

  @override
  String get telemetryReportTitle => 'Dettagli del rapporto';

  @override
  String get telemetryLegalLabel => 'Avviso legale';

  @override
  String get telemetryCollectError =>
      'Impossibile raccogliere i dati di telemetria';

  @override
  String get privacyPageTitle => 'Servizi di localizzazione';

  @override
  String get privacyLocationTitle => 'Abilitare i servizi di localizzazione?';

  @override
  String get privacyLocationSubtitle =>
      'Consenti alle applicazioni di conoscere la tua posizione geografica.\nPuoi modificare questa impostazione in qualsiasi momento nelle impostazioni di sistema.';

  @override
  String get privacyLocationEnable => 'Servizi di localizzazione';

  @override
  String get privacyPolicyLink => 'Privacy dei dati';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Magic attach with this code at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Collega questa macchina';

  @override
  String get ubuntuProOrAddTokenManually =>
      'oppure aggiungi un token manualmente';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Ottieni l\'abbonamento più completo per la sicurezza del software open source';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Sempre gratuito per uso personale. Prova di 30 giorni per le imprese. <a href=\"https://$url\">Ulteriori informazioni</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Attach';

  @override
  String get ubuntuProTokenAttachError => 'Token non valido';

  @override
  String get ubuntuProTokenAttachSucess => 'Token valido';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Token non valido, riprova';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Salta per ora';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Puoi sempre abilitare Ubuntu Pro in un secondo momento tramite l\'applicazione Software e aggiornamenti.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Abilita Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Collega questa macchina a un abbonamento Ubuntu Pro per aggiornamenti di sicurezza su una gamma più ampia di pacchetti, fino al 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro è ora abilitato su questa macchina';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Puoi gestire i tuoi servizi Pro nell\'applicazione Software e aggiornamenti.';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
