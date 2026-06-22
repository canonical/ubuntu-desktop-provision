import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html_svg/flutter_html_svg.dart';
import 'package:flutter_html_table/flutter_html_table.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

final _log = Logger('slides');

/// The decorative bullet character used as a list marker in slides. It is kept
/// visible but hidden from screen readers (Orca reads it aloud as "bullet").
const _bullet = '\u2022';

class SlideHtml extends StatelessWidget {
  const SlideHtml(
    this.data, {
    this.index,
    this.locale,
    this.autofocus = false,
    super.key,
  });

  final String data;
  final int? index;
  final String? locale;

  /// Whether the slide's body text should request focus when first built. This
  /// lets a screen reader announce the slide as soon as it appears.
  final bool autofocus;

  /// Returns the plain text content of this slide for screen reader labels.
  ///
  /// Strips the HTML and CSS, removes decorative bullets, collapses whitespace.
  String get semanticText => data
      .replaceAll(RegExp(r'<style[^>]*>.*?</style>', dotAll: true), '')
      .replaceAll(RegExp(r'<[^>]+>'), ' ')
      .replaceAll(_bullet, ' ')
      .replaceAll(RegExp(r'[ \t]+'), ' ')
      .replaceAll(RegExp(r'\n +'), '\n')
      .replaceAll(RegExp(r'\n{3,}'), '\n\n')
      .trim();

  /// Wraps the slide's body text in a `<slidetext>` element so it is rendered
  /// as a single, focusable semantics node (see the `slidetext` extension in
  /// [build]). The slide's links live in their own table cell and are left
  /// untouched so they remain separate, individually focusable nodes that are
  /// never descendants of the body text node — this prevents a screen reader
  /// from re-reading the whole slide when the user tabs to a link.
  String _wrapBodyText(String html) {
    final longTextCell =
        RegExp('(<td[^>]*class="long-text"[^>]*>)(.*?)(</td>)', dotAll: true);
    if (longTextCell.hasMatch(html)) {
      return html.replaceFirstMapped(
        longTextCell,
        (m) => '${m[1]}<slidetext>${m[2]}</slidetext>${m[3]}',
      );
    }
    // A slide with links but no dedicated text cell is left untouched so the
    // links stay separate, focusable nodes (the body text must not be merged
    // across them).
    if (html.contains('<a ')) {
      return html;
    }
    final body = RegExp('(<body[^>]*>)(.*?)(</body>)', dotAll: true);
    if (body.hasMatch(html)) {
      return html.replaceFirstMapped(
        body,
        (m) => '${m[1]}<slidetext>${m[2]}</slidetext>${m[3]}',
      );
    }
    return html;
  }

  /// Removes markup that only exists for visual spacing in a slide's link
  /// column (`<br>` line breaks and empty `<p></p>` paragraphs) and collapses
  /// the whitespace between tags. Without this, those stray text nodes are not
  /// claimed by any focusable child and bubble up into the slideshow
  /// container's semantics label as blank whitespace, which a screen reader
  /// announces as an empty item when the slide body is focused.
  ///
  /// Each remaining `<bullet>…</bullet><a>…</a>` pair is wrapped in a block
  /// `<linkrow>` so the links still stack one per line (previously achieved
  /// with the now-removed `<br>` tags) while the bullet stays on the same line
  /// as its link.
  String _stripDecorativeWhitespace(String html) {
    final collapsed = html
        .replaceAll(RegExp(r'<br\s*/?>'), '')
        .replaceAll(RegExp(r'<p>\s*</p>'), '')
        .replaceAll(RegExp(r'>\s+<'), '><');
    return collapsed.replaceAllMapped(
      RegExp('(<bullet>.*?</bullet><a[^>]*>.*?</a>)', dotAll: true),
      (m) => '<linkrow>${m[1]}</linkrow>',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Html(
      // Wrap decorative bullet markers in a custom tag so they stay visible but
      // can be hidden from screen readers (Orca reads each one as "bullet"),
      // then wrap the body text so it forms a single focusable node.
      data: _wrapBodyText(
        _stripDecorativeWhitespace(
          data.replaceAll(_bullet, '<bullet>$_bullet</bullet>'),
        ),
      ),
      extensions: [
        // The slide's body text, exposed to screen readers as a single
        // focusable node so the whole slide is read in one stop rather than
        // one stop per paragraph. It is its own semantics boundary (and lives
        // in its own table cell), so it is never an ancestor of the links and
        // tabbing to a link does not re-read it.
        TagExtension(
          tagsToExtend: {'slidetext'},
          builder: (extensionContext) {
            final spans =
                extensionContext.inlineSpanChildren ?? const <InlineSpan>[];
            final children = <Widget>[];
            for (final span in spans) {
              if (span is WidgetSpan) {
                children.add(span.child);
              } else if (span
                  .toPlainText(includeSemanticsLabels: false)
                  .trim()
                  .isNotEmpty) {
                children.add(Text.rich(span));
              }
            }
            // Label the node with the body text. Prefer the block children's
            // text (one line per paragraph); fall back to the element's
            // flattened text for slides whose body is inline/loose text.
            final blockLabel = (extensionContext.element?.children ?? const [])
                .map((e) => e.text.trim())
                .where((text) => text.isNotEmpty)
                .join('\n');
            final label = blockLabel.isNotEmpty
                ? blockLabel
                : (extensionContext.element?.text.trim() ?? '');
            return MergeSemantics(
              child: Semantics(
                label: label,
                child: Focus(
                  autofocus: autofocus,
                  child: ExcludeSemantics(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: children,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        // Images in slides are decorative. Flutter's Image widget always carries
        // an `image` semantics flag that Orca reads as "image", so render them
        // hidden from the screen reader (they remain visible on screen).
        TagExtension(
          tagsToExtend: {'img'},
          builder: (extensionContext) {
            final src = extensionContext.element?.attributes['src'];
            final style = extensionContext.style;
            final width = style?.width?.value;
            final height = style?.height?.value;
            if (src == null || !src.contains('base64,')) {
              return const SizedBox.shrink();
            }
            final bytes = base64Decode(src.split('base64,')[1].trim());
            final isSvg = src.startsWith('data:image/svg+xml');
            return ExcludeSemantics(
              child: isSvg
                  ? SvgPicture.memory(bytes, width: width, height: height)
                  : Image.memory(
                      bytes,
                      width: width,
                      height: height,
                      fit: BoxFit.fill,
                      excludeFromSemantics: true,
                    ),
            );
          },
        ),
        // Decorative list bullets: visible, but hidden from screen readers.
        // The trailing space is part of the (excluded) bullet so it survives
        // the inter-tag whitespace collapse in [_stripDecorativeWhitespace].
        TagExtension(
          tagsToExtend: {'bullet'},
          builder: (extensionContext) {
            return ExcludeSemantics(
              child: Text(
                '$_bullet ',
                style: extensionContext.style?.generateTextStyle(),
              ),
            );
          },
        ),
        // A "<bullet> <link>" row, rendered as a block so the slide's links
        // stack one per line (replacing the removed <br> spacers). The bullet
        // and link flow inline within the row via [Text.rich].
        TagExtension(
          tagsToExtend: {'linkrow'},
          builder: (extensionContext) {
            return Text.rich(
              TextSpan(
                children:
                    extensionContext.inlineSpanChildren ?? const <InlineSpan>[],
              ),
            );
          },
        ),
        TagExtension(
          tagsToExtend: {'a'},
          builder: (extensionContext) {
            final href = extensionContext.element?.attributes['href'];
            final text = extensionContext.element?.text ?? '';
            final textStyle = extensionContext.style?.generateTextStyle();
            return MergeSemantics(
              child: Semantics(
                link: true,
                label: text,
                onTap: href != null ? () => launchUrl(href) : null,
                child: Focus(
                  onKeyEvent: (_, event) {
                    if (event is KeyDownEvent &&
                        href != null &&
                        (event.logicalKey == LogicalKeyboardKey.enter ||
                            event.logicalKey == LogicalKeyboardKey.space)) {
                      launchUrl(href);
                      return KeyEventResult.handled;
                    }
                    return KeyEventResult.ignored;
                  },
                  child: ExcludeSemantics(
                    child: GestureDetector(
                      onTap: href != null ? () => launchUrl(href) : null,
                      child: Text(
                        text,
                        style: textStyle,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
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
              // Paragraphs are excluded from semantics: the body text is read
              // via the single focusable `slidetext` node (whose label is built
              // from the element text, not the rendered widgets). Excluding them
              // also keeps stray/empty paragraphs in the links column from
              // leaking whitespace into the slideshow container's label.
              child: ExcludeSemantics(
                child: Text(
                  extensionContext.element!.text,
                  style: textStyle,
                ),
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
        'bullet': Style(display: Display.inline),
        'slidetext': Style(display: Display.block, margin: Margins.all(0)),
        // Each "<bullet> <link>" pair is wrapped in a block row (see
        // [_stripDecorativeWhitespace]) so the links stack one per line without
        // needing <br> spacers that would leak whitespace into the slideshow
        // container's semantics label.
        'linkrow': Style(display: Display.block),
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
