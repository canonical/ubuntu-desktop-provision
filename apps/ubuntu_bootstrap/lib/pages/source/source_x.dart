import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/source/source_model.dart';

extension SourceSelectionL10n on SourceSelection {
  String localizedTitle(UbuntuBootstrapLocalizations lang) => switch (id) {
        kFullSourceId => lang.fullInstallationTitle,
        kMinimalSourceId => lang.minimalInstallationTitle,
        _ => name,
      };
  String localizedSubtitle(UbuntuBootstrapLocalizations lang) => switch (id) {
        kFullSourceId => lang.fullInstallationSubtitle,
        kMinimalSourceId => lang.minimalInstallationSubtitle,
        _ => description,
      };
}
