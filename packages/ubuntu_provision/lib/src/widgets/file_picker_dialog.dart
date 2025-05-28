import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:xdg_desktop_portal/xdg_desktop_portal.dart';

final _log = Logger('file_picker');

enum _FilePickerAction {
  open,
  save,
}

Future<Uri?> showOpenFileDialog({
  required BuildContext context,
  required String title,
  List<XdgFileChooserFilter> filters = const [],
}) =>
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => _FilePicker(
        title: title,
        filters: filters,
        action: _FilePickerAction.open,
      ),
    );

Future<Uri?> showSaveFileDialog({
  required BuildContext context,
  required String title,
  String? defaultFileName,
  List<XdgFileChooserFilter> filters = const [],
}) =>
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => _FilePicker(
        title: title,
        filters: filters,
        defaultFileName: defaultFileName,
        action: _FilePickerAction.save,
      ),
    );

class _FilePicker extends ConsumerStatefulWidget {
  const _FilePicker({
    required this.title,
    required this.filters,
    required this.action,
    this.defaultFileName,
  });

  final String title;
  final List<XdgFileChooserFilter> filters;
  final _FilePickerAction action;
  final String? defaultFileName;

  @override
  ConsumerState<_FilePicker> createState() => _FilePickerState();
}

class _FilePickerState extends ConsumerState<_FilePicker> {
  late final _portal = getService<XdgDesktopPortalClient>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => showPicker());
  }

  Future<void> showPicker() async {
    try {
      final uri = Uri.parse(
        await switch (widget.action) {
          _FilePickerAction.open => _portal.fileChooser
              .openFile(
                title: widget.title,
                filters: widget.filters,
              )
              .first
              .then((result) => result.uris.first),
          _FilePickerAction.save => _portal.fileChooser
              .saveFile(
                title: widget.title,
                filters: widget.filters,
                currentName: widget.defaultFileName,
              )
              .first
              .then((result) => result.uris.first)
        },
      );
      if (mounted) {
        Navigator.of(context).pop(uri);
      }
    } on XdgPortalRequestCancelledException catch (e) {
      _log.debug('XDG dialog cancelled during ${widget.action}: $e');
      if (mounted) {
        Navigator.of(context).pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
