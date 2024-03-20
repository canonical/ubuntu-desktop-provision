import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_provision/src/eula/eula_l10n.dart';
import 'package:ubuntu_provision/widgets.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class EULAPage extends StatefulWidget with ProvisioningPage {
  const EULAPage({super.key});

  @override
  State<EULAPage> createState() => _EULAPageState();
}

class _EULAPageState extends State<EULAPage> {
  bool _hasAcceptedTerms = false;

  Widget build(BuildContext context) {
    final lang = EULALocalizations.of(context);

    return HorizontalPage(
      windowTitle: lang.eulaPageTitle,
      title: lang.eulaReviewTerms,
      isNextEnabled: false,
      isScrollable: false,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(lang.eulaReadAndAcceptTerms),
          const SizedBox(height: kWizardSpacing),
          Expanded(
            child: YaruBorderContainer(
              borderRadius: BorderRadius.circular(0),
              color: Theme.of(context).colorScheme.background,
              child: SingleChildScrollView(
                child: Html(
                  data:
                      'Lorem ipsum dolor sit amet consectetur. Iaculis varius eget fames mauris tristique magna pellentesque tristique. Lorem ipsum dolor sit amet consectetur. Iaculis varius eget fames mauris tristique magna pellentesque tristique. Lorem ipsum dolor sit amet consectetur. Iaculis varius eget fames mauris tristique magna pellentesque tristique. Lorem ipsum dolor sit amet consectetur. Iaculis varius eget fames mauris tristique magna pellentesque tristique. Lorem ipsum dolor sit amet consectetur. Iaculis varius eget fames mauris tristique magna pellentesque tristique. Magna mattis congue mus magna pellentesque amet augue cursus et. Massa nulla faucibus orci scelerisque mattis. Neque nulla sem eu id sit non massa faucibus sapien. Tincidunt suspendisse ornare cras orci quis lorem. Massa lobortis phasellus leo phasellus. Tortor eu orci nec ipsum sed. Adipiscing euismod in leo feugiat nulla senectus maecenas pharetra. Lectus integer mollis dolor molestie ipsum egestas eget. Augue aliquam scelerisque feugiat elementum purus ut. Tempus eu neque imperdiet aliquam elementum amet. Diam nec velit eu vel mi ipsum mi quam pharetra. Vulputate non nascetur consequat justo pharetra. Sit volutpat lorem enim pellentesque. Semper mauris nulla pretium semper gravida ullamcorper dictum arcu. Accumsan ornare tempus aenean dolor faucibus. Sed nullam sodales feugiat arcu facilisi pretium sed. Parturient gravida cursus scelerisque fermentum nec aliquet.',
                  extensions: [
                    TagExtension(
                      tagsToExtend: {'p'},
                      builder: (extensionContext) {
                        final style = extensionContext.style;
                        final textStyle = style?.generateTextStyle();
                        final padding = style?.padding;
                        final context = extensionContext.buildContext;
                        final direction = context == null
                            ? TextDirection.ltr
                            : Directionality.of(context);
                        return Container(
                          padding: padding?.resolve(direction),
                          child: Text(
                            extensionContext.element!.text,
                            style: textStyle,
                          ),
                        );
                      },
                    ),
                  ],
                  onLinkTap: (url, _, __) {
                    if (url != null) {
                      launchUrl(url);
                    }
                  },
                  style: {
                    'body': Style(margin: Margins.all(0)),
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: kWizardSpacing),
          CheckboxListTile(
            fillColor: MaterialStateProperty.resolveWith<Color?>((states) {
              if (states.contains(MaterialState.selected)) {
                return Theme.of(context).colorScheme.primary;
              }
              return Theme.of(context).colorScheme.background;
            }),
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(
              lang.eulaAcceptTerms,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            value: _hasAcceptedTerms,
            onChanged: (value) => setState(
              () {
                _hasAcceptedTerms = !_hasAcceptedTerms;
              },
            ),
          ),
        ],
      ),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(
            enabled: _hasAcceptedTerms,
          ),
        ],
      ),
    );
  }
}
