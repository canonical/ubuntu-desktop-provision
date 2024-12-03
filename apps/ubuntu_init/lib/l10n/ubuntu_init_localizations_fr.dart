import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class UbuntuInitLocalizationsFr extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get welcomePageTitle => 'Bienvenue';

  @override
  String welcomePageHeader(Object distro) {
    return 'Bienvenue sur $distro';
  }

  @override
  String get welcomeWhatsNew => 'QUOI DE NEUF ?';

  @override
  String get welcomeStartTitle => 'Un démarrage simplifié';

  @override
  String get welcomeStartSubtitle => 'Favoriser une installation plus simple.';

  @override
  String get welcomeStoreTitle => 'App Store revisité';

  @override
  String get welcomeStoreSubtitle => 'Ça n\'a jamais été aussi facile de trouver votre logiciel préféré.';

  @override
  String get welcomeSecurityTitle => 'Sécurité renforcée';

  @override
  String get welcomeSecuritySubtitle => 'Nouvelles options de chiffrement matériel, ou via ZFS.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Voir la liste des changements</a>';
  }

  @override
  String get telemetryPageTitle => 'Télémétrie';

  @override
  String telemetryHeader(Object distro) {
    return 'Aider à améliorer $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Aidez nous à améliorer $distro en partageant avec nous vos informations de système. Cela inclut votre modèle de machine, vos logiciels installés, votre position géographique, ou votre fuseau horaire.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Oui, partager les données du système avec l\'équipe $distro';
  }

  @override
  String get telemetryLabelOff => 'Non, ne pas partager les données du système';

  @override
  String get telemetryReportLabel => 'Voir le premier rapport';

  @override
  String get telemetryReportTitle => 'Détails du rapport';

  @override
  String get telemetryLegalLabel => 'Mentions légales';

  @override
  String get telemetryCollectError => 'Échec de la collecte des données de télémétrie';

  @override
  String get privacyPageTitle => 'Services de localisation';

  @override
  String get privacyLocationTitle => 'Activer les services de localisation ?';

  @override
  String get privacyLocationSubtitle => 'Laisser les applications accéder à votre localisation.\nVous pouvez changer ça à tout moment dans les paramètres du système.';

  @override
  String get privacyLocationEnable => 'Services de localisation';

  @override
  String get privacyPolicyLink => 'Protection des données';

  @override
  String ubuntuProMagicAttachInstructions(Object url) {
    return 'Rattachement automagique avec le code à cette adresse <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Rattacher cette machine';

  @override
  String get ubuntuProOrAddTokenManually => 'ou ajouter un jeton manuellement';

  @override
  String get ubuntuProTokenTextfieldHint => 'Jeton';

  @override
  String get ubuntuProSubscriptionDescription => 'Abonnez-vous à la meilleure des sécurités pour les logiciels libres';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Toujours gratuit pour un usage personnel. 30 jours d\'essai pour les entreprises. <a href=\"https://$url\">En savoir plus</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Attacher';

  @override
  String get ubuntuProTokenAttachError => 'Jeton invalide';

  @override
  String get ubuntuProTokenAttachSucess => 'Jeton valide';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Jeton invalide, réessayer';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Passer pour l\'instant';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'Vous pouvez toujours activer Ubuntu Pro plus tard dans l\'application Logiciels & Mises à jour.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Activer Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Rattachez cette machine à un abonnement Ubuntu Pro for recevoir des mises à jour de sécurité pour un grand nombre de paquets, jusqu\'en 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro est maintenant activé sur cette machine';

  @override
  String get ubuntuProSucessAttachDescription => 'Vous pouvez gérer vos services Pro dans l\'application Logiciels & Mises à jour.';
}
