import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html_svg/flutter_html_svg.dart';
import 'package:flutter_html_table/flutter_html_table.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

final _log = Logger('slides');

class SlideHtml extends StatelessWidget {
  const SlideHtml(this.data, {this.index, this.locale, super.key});

  final String data;
  final int? index;
  final String? locale;

  @override
  Widget build(BuildContext context) {
    return Html(
      data: data,
      extensions: [
        TagExtension(
          tagsToExtend: {'p'},
          builder: (extensionContext) {
            final style = extensionContext.style;
            final textStyle = style?.generateTextStyle();
            final padding = style?.padding;
            final margin = style?.margin;
            final context = extensionContext.buildContext;
            final direction = context == null
                ? TextDirection.ltr
                : Directionality.of(context);
            return Container(
              padding:
                  padding?.resolve(direction) ?? margin?.resolve(direction),
              child: Text(
                extensionContext.element!.text,
                style: textStyle,
              ),
            );
          },
        ),
        const TableHtmlExtension(),
        const SvgHtmlExtension(),
      ],
      onLinkTap: (url, _, __) {
        if (url != null) {
          launchUrl(url);
        }
      },
      onCssParseError: (css, messages) {
        _log.error(
          '''
Error parsing CSS for slide index $index with
locale: $locale
CSS: $css
messages: $messages
''',
        );
        return null;
      },
      style: {
        'body': Style(margin: Margins.all(0)),
      },
    );
  }
}

extension on Margins {
  EdgeInsets resolve(TextDirection direction) {
    return EdgeInsets.only(
      top: top?.value ?? 0,
      bottom: bottom?.value ?? 0,
      left:
          direction == TextDirection.ltr ? left?.value ?? 0 : right?.value ?? 0,
      right:
          direction == TextDirection.ltr ? right?.value ?? 0 : left?.value ?? 0,
    );
  }
}
