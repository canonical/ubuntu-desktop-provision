import 'package:flutter/material.dart';
import 'package:pdfrx/pdfrx.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

class EULAPdfViewer extends StatelessWidget {
  const EULAPdfViewer({required this.path, super.key});

  final String path;

  @override
  Widget build(BuildContext context) {
    return PdfViewer.file(
      path,
      params: PdfViewerParams(
        errorBannerBuilder: (context, error, stackTrace, documentRef) => Center(
          child: Text(
            stackTrace.toString(),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        linkWidgetBuilder: (context, link, size) => MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              UrlLauncher().launchUrl(link.url.toString());
            },
            child: Container(
              width: size.width,
              height: size.height,
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
