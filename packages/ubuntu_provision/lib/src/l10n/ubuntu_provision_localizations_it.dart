// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class UbuntuProvisionLocalizationsIt extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Accessibilità';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Accessibilità in $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Personalizza $DISTRO in base alle tue esigenze prima della configurazione. Puoi modificarli in seguito in Impostazioni di sistema.';
  }

  @override
  String get accessibilitySeeingLabel => 'Seeing';

  @override
  String get accessibilityHearingLabel => 'Hearing';

  @override
  String get accessibilityTypingLabel => 'Typing';

  @override
  String get accessibilityPointingLabel => 'Pointing and clicking';

  @override
  String get accessibilityZoomLabel => 'Zoom';

  @override
  String get accessibilityHighContrastLabel => 'Contrasto elevato';

  @override
  String get accessibilityLargeTextLabel => 'Testo grande';

  @override
  String get accessibilityReduceAnimationLabel => 'Riduci animazione';

  @override
  String get accessibilityScreenReaderLabel => 'Lettore di schermo';

  @override
  String get accessibilityVisualAlertsLabel => 'Avvisi visivi';

  @override
  String get accessibilityStickKeysLabel => 'Sticky keys';

  @override
  String get accessibilitySlowKeysLabel => 'Slow keys';

  @override
  String get accessibilityMouseKeysLabel => 'Mouse keys';

  @override
  String get accessibilityDesktopZoomLabel => 'Zoom desktop';

  @override
  String get errorPageTitle => 'Qualcosa è andato storto';

  @override
  String get errorPageUnexpected =>
      'Spiacenti, ma non siamo sicuri di questo errore. Puoi provare a riavviare il computer e iniziare nuovamente il processo di installazione. Puoi anche <a>segnalare l\'errore</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Per inviare una segnalazione automatica di errore includi le informazioni di debug rilevati, esegui <pre>sudo ubuntu-bug $SNAP</pre> in un terminal, o dalla console di comando (ALT+F2).';
  }

  @override
  String get errorPageShowLog => 'Mostra log';

  @override
  String get errorPageHideLog => 'Nascondi log';

  @override
  String get errorPageTechnicalDetails => 'Technical details';

  @override
  String get restart => 'Riavvia';

  @override
  String get close => 'Chiudi';

  @override
  String get timezonePageTitle => 'Seleziona il tuo fuso orario';

  @override
  String get timezoneLocationLabel => 'Posizione';

  @override
  String get timezoneTimezoneLabel => 'Fuso orario';

  @override
  String get keyboardTitle => 'Disposizione della tastiera';

  @override
  String get keyboardHeader => 'Scegliere la disposizione della tastiera:';

  @override
  String get keyboardTestHint => 'Digitare qui per provare la tastiera';

  @override
  String get keyboardDetectTitle => 'Rileva disposizione tastiera';

  @override
  String get keyboardDetectButton => 'Detect';

  @override
  String get keyboardVariantLabel => 'Seleziona il formato della tastiera:';

  @override
  String get keyboardPressKeyLabel => 'Prego premere uno dei seguenti tasti:';

  @override
  String get keyboardKeyPresentLabel =>
      'Il seguente tasto è presente sulla propria tastiera?';

  @override
  String get themePageTitle => 'Scegli il aspetto';

  @override
  String get themePageHeader =>
      'Puoi sempre modificarlo in seguito nelle impostazioni dell\'aspetto.';

  @override
  String get themeDark => 'Scuro';

  @override
  String get themeLight => 'Chiaro';

  @override
  String localePageTitle(String DISTRO) {
    return 'Benvenuto su $DISTRO';
  }

  @override
  String get localeHeader => 'Scegli la tua lingua:';

  @override
  String get identityPageTitle => 'Informazioni personali';

  @override
  String get identityAutoLogin => 'Accedere automaticamente';

  @override
  String get identityRequirePassword => 'Richiedi la password all\'accesso';

  @override
  String get identityRealNameLabel => 'Nome';

  @override
  String get identityRealNameRequired => 'È richiesto un nome';

  @override
  String get identityRealNameTooLong => 'Il nome è troppo lungo.';

  @override
  String get identityHostnameLabel => 'Il nome del computer';

  @override
  String get identityHostnameInfo =>
      'Il nome usato per comunicare con altri computer.';

  @override
  String get identityHostnameRequired => 'È richiesto un nome del computer';

  @override
  String get identityHostnameTooLong => 'Il nome del computer è troppo lungo.';

  @override
  String get identityInvalidHostname => 'Il nome del computer non è valido';

  @override
  String get identityUsernameLabel => 'Scegli uno username';

  @override
  String get identityUsernameRequired => 'È richiesto un username';

  @override
  String get identityInvalidUsername => 'L\'username non è valido';

  @override
  String get identityUsernameInUse => 'Esiste già un utente con quel nome.';

  @override
  String get identityUsernameSystemReserved =>
      'Quel nome è riservato per uso interno al sistema.';

  @override
  String get identityUsernameTooLong => 'Quel nome è troppo lungo.';

  @override
  String get identityUsernameInvalidChars =>
      'Quel nome contiene caratteri non validi.';

  @override
  String get identityPasswordLabel => 'Scegli una password';

  @override
  String get identityPasswordRequired => 'È richiesta una password';

  @override
  String get identityConfirmPasswordLabel => 'Conferma la password';

  @override
  String get identityPasswordMismatch => 'Le password non corrispondono';

  @override
  String get identityPasswordShow => 'Mostra';

  @override
  String get identityPasswordHide => 'Nascondi';

  @override
  String get identityActiveDirectoryOption => 'Usa Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'Inserirai il dominio e altri dettagli nel passaggio successivo.';

  @override
  String get activeDirectoryTitle => 'Accedi ad Active Directory';

  @override
  String get activeDirectoryHeader => 'Accedere ad Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO è progettato per integrarsi perfettamente con Active Directory per un\'amministrazione più semplice.';
  }

  @override
  String get activeDirectoryTestConnection =>
      'Testare la connettività del dominio';

  @override
  String get activeDirectoryDomainLabel => 'Dominio';

  @override
  String get activeDirectoryDomainEmpty => 'Richiesto';

  @override
  String get activeDirectoryDomainTooLong => 'Troppo lungo';

  @override
  String get activeDirectoryDomainInvalidChars => 'Caratteri non validi';

  @override
  String get activeDirectoryDomainStartDot => 'Inizia con un punto (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Termina con un punto (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Inizia con un trattino (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Termina con un trattino (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Contiene più punti in sequenza (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Dominio non trovato';

  @override
  String get activeDirectoryAdminLabel => 'Domain join user';

  @override
  String get activeDirectoryAdminEmpty => 'Richiesto';

  @override
  String get activeDirectoryAdminInvalidChars => 'Caratteri non validi';

  @override
  String get activeDirectoryPasswordLabel => 'Password';

  @override
  String get activeDirectoryPasswordEmpty => 'Richiesto';

  @override
  String get activeDirectoryErrorTitle =>
      'Errore durante la configurazione della connessione ad Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'Spiacenti, al momento non è possibile configurare Active Directory. Una volta che il sistema è attivo e funzionante, visita <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> per ricevere assistenza.';

  @override
  String get networkPageTitle => 'Connetti alla rete';

  @override
  String get networkPageHeader =>
      'Connettere questo computer alla rete permetterà a Ubuntu l\'installazione di software aggiuntivo necessario e a scegliere il tuo fuso orario.\n\nConnetti il computer via cavo Ethernet, o scegli una Rete Wi-Fi';

  @override
  String get networkPageBody =>
      'Una connessione Internet migliorerà la tua installazione con controllo di compatibilità e pacchetti software aggiuntivi.';

  @override
  String get networkWiredOption => 'Usa connessione cablata';

  @override
  String get networkWiredNone => 'Nessuna connessione cablata rilevata';

  @override
  String get networkWiredOff => 'La connessione cablata è disattivata';

  @override
  String get networkWiredDisabled =>
      'Per usufruire della connessione Ethernet in questo computer, una connessione cablata deve essere attiva';

  @override
  String get networkWiredEnable => 'Abilita cablato';

  @override
  String get networkWifiOption => 'Connetti a una rete Wi-Fi';

  @override
  String get networkWifiOff => 'Connessione senza fili disattivata';

  @override
  String get networkWifiNone => 'Nessun dispositivo Wi-Fi rilevato';

  @override
  String get networkWifiDisabled =>
      'Per usufruire della Wi-Fi in questo computer, la rete wireless deve essere abilitata';

  @override
  String get networkWifiEnable => 'Abilita Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Connetti a una rete Wi-Fi nascosta';

  @override
  String get networkHiddenWifiNameLabel => 'Nome della Rete';

  @override
  String get networkHiddenWifiNameRequired => 'È richiesto il nome della rete';

  @override
  String get networkNoneOption =>
      'Non voglio connettermi alla rete in questo momento';

  @override
  String get eulaPageTitle => 'Accordo di licenza';

  @override
  String get eulaReviewTerms => 'Leggi i termini della licenza';

  @override
  String get eulaReadAndAcceptTerms =>
      'Per continuare a configurare questa macchina, è necessario leggere e accettare i termini del contratto di licenza.';

  @override
  String get eulaAcceptTerms => 'Ho letto e accetto i termini';

  @override
  String get successIconSemanticLabel => 'Successo';

  @override
  String get closeIconSemanticLabel => 'Chiudi';

  @override
  String get maximizeIconSemanticLabel => 'Massimizza';

  @override
  String get minimizeIconSemanticLabel => 'Minimizza';

  @override
  String get expandIconSemanticLabel => 'Espandi';

  @override
  String get collapseIconSemanticLabel => 'Riduci';
}
