import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

class SlideLink extends StatelessWidget {
  const SlideLink({required this.text, required this.url, super.key});

  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Html(
      data: '<a href="$url">$text</a>',
      shrinkWrap: true,
      style: {
        'body': Style(margin: Margins.zero),
        'a': Style(
          color: Theme.of(context).colorScheme.onBackground,
          textDecoration: TextDecoration.none,
        ),
      },
      onAnchorTap: (url, _, __) => launchUrl(url!),
    );
  }
}
