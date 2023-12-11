import 'package:flutter/widgets.dart';
import 'package:subiquity_client/subiquity_client.dart';
import '../../l10n.dart';

extension TaskL10n on Task {
  String localize(BuildContext context, String snap) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    switch (kind) {
      case 'refresh-snap':
        return lang.refreshSnapRefresh(snap);
      case 'check-rerefresh':
        return lang.refreshSnapCheckRerefresh(snap);
      case 'prerequisites':
        return lang.refreshSnapPrerequisites(snap);
      case 'prepare-snap':
        return lang.refreshSnapPrepare(snap);
      case 'download-snap':
        return lang.refreshSnapDownload(snap);
      case 'validate-snap':
        return lang.refreshSnapValidate(snap);
      case 'mount-snap':
        return lang.refreshSnapMount(snap);
      case 'stop-snap-services':
        return lang.refreshSnapStopServices(snap);
      case 'remove-aliases':
        return lang.refreshSnapRemoveAliases(snap);
      case 'unlink-current-snap':
        return lang.refreshSnapUnlink(snap);
      case 'update-gadget-assets':
        return lang.refreshSnapUpdateAssets(snap);
      case 'update-gadget-cmdline':
        return lang.refreshSnapUpdateKernelCommandLine(snap);
      case 'copy-snap-data':
        return lang.refreshSnapCopyData(snap);
      case 'setup-profiles':
        return lang.refreshSnapSetupProfiles(snap);
      case 'link-snap':
        return lang.refreshSnapLink(snap);
      case 'auto-connect':
        return lang.refreshSnapAutoConnect(snap);
      case 'set-auto-aliases':
        return lang.refreshSnapSetAutoAliases(snap);
      case 'setup-aliases':
        return lang.refreshSnapSetupAliases(snap);
      case 'start-snap-services':
        return lang.refreshSnapStartServices(snap);
      case 'cleanup':
        return lang.refreshSnapCleanup(snap);
      default:
        return kind;
    }
  }
}
