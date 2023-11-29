import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

import 'layouts/slide_layout_styles.dart';
import 'slide_layouts.dart';
import 'slide_widgets.dart';

/// The list of default installation slides.
final defaultSlides = <WidgetBuilder>[
  _buildWelcomeSlide,
  _buildSoftwareSlide,
  _buildDevelopmentSlide,
  _buildCreativitySlide,
  _buildGamingSlide,
  _buildSecuritySlide,
  _buildProductivitySlide,
  _buildAccessibilitySlide,
  // TODO: ubuntu pro slide in LTS releases
  _buildSupportSlide,
];

Widget _buildWelcomeSlide(BuildContext context) {
  final lang = UbuntuBootstrapLocalizations.of(context);
  final product = getService<ProductService>();
  return IntroSlideLayout(
    title: Text(lang.installationSlidesWelcomeTitle),
    body: SlideColumn(
      children: [
        Consumer(builder: (context, ref, child) {
          final flavor = ref.watch(flavorProvider);
          return Text(lang.installationSlidesWelcomeHeader(flavor.name));
        }),
        Text(lang.installationSlidesWelcomeBody(product.getProductInfo())),
      ],
    ),
    image: MascotAvatar(
      image: AssetImage(slideAsset('mascot.png'), package: 'ubuntu_bootstrap'),
      size: const Size.square(300),
    ),
  );
}

Widget _buildSoftwareSlide(BuildContext context) {
  final lang = UbuntuBootstrapLocalizations.of(context);
  return CinematicSlideLayout(
    title: Text(lang.installationSlidesSoftwareTitle),
    body: Consumer(builder: (context, ref, child) {
      final flavor = ref.watch(flavorProvider);
      return Text(lang.installationSlidesSoftwareBody(flavor.name));
    }),
    banner: Container(
      alignment: Alignment.center,
      color: const Color(0xff2c2c2c), // TODO: fix screenshot background
      child: const SlideScreenshot('store.png'),
    ),
    table: SlideTable(
      rows: [
        [
          Text(lang.installationSlidesAvailable),
          const SlideLabel(
            icon: SlideIcon('spotify.png'),
            label: Text('Spotify'),
          ),
          const SlideLabel(
            icon: SlideIcon('shotcut.png'),
            label: Text('Shotcut'),
          ),
          const SlideLabel(
            icon: SlideIcon('telegram.png'),
            label: Text('Telegram'),
          ),
          const SlideLabel(
            icon: SlideIcon('nextcloud.png'),
            label: Text('Nextcloud'),
          ),
        ],
      ],
    ),
  );
}

Widget _buildDevelopmentSlide(BuildContext context) {
  final lang = UbuntuBootstrapLocalizations.of(context);
  return PortraitSlideLayout(
    title: Text(lang.installationSlidesDevelopmentTitle),
    body: Consumer(builder: (context, ref, child) {
      final flavor = ref.watch(flavorProvider);
      return Text(lang.installationSlidesDevelopmentBody(flavor.name));
    }),
    image: const SlideScreenshot('vscode.png'),
    table: SlideTable(
      rows: [
        [
          Text(lang.installationSlidesAvailable),
          const SlideLabel(
            icon: SlideIcon('vscode.png'),
            label: Text('Visual Studio Code'),
          ),
          const SlideLabel(
            icon: SlideIcon('intellij.png'),
            label: Text('IDEA Ultimate'),
          ),
          const SlideLabel(
            icon: SlideIcon('pycharm.png'),
            label: Text('Pycharm'),
          ),
          const SlideLabel(
            icon: SlideIcon('gitkraken.png'),
            label: Text('GitKraken'),
          ),
        ],
      ],
    ),
  );
}

Widget _buildCreativitySlide(BuildContext context) {
  final lang = UbuntuBootstrapLocalizations.of(context);
  return LandscapeSlideLayout(
    title: Text(lang.installationSlidesCreativityTitle),
    body: Consumer(builder: (context, ref, child) {
      final flavor = ref.watch(flavorProvider);
      return Text(lang.installationSlidesCreativityBody(flavor.name));
    }),
    image: const SlideScreenshot('blender.png'),
    table: SlideTable(
      rows: [
        [
          Text(lang.installationSlidesAvailable),
          const SlideLabel(
            icon: SlideIcon('blender.png'),
            label: Text('Blender'),
          ),
          const SlideLabel(
            icon: SlideIcon('audacity.png'),
            label: Text('Audacity'),
          ),
          const SlideLabel(
            icon: SlideIcon('kdenlive.png'),
            label: Text('Kdenlive'),
          ),
          const SlideLabel(
            icon: SlideIcon('godot.png'),
            label: Text('Godot'),
          ),
        ],
      ],
    ),
  );
}

Widget _buildGamingSlide(BuildContext context) {
  final lang = UbuntuBootstrapLocalizations.of(context);
  return CinematicSlideLayout(
    title: Text(lang.installationSlidesGamingTitle),
    body: Consumer(builder: (context, ref, child) {
      final flavor = ref.watch(flavorProvider);
      return Text(lang.installationSlidesGamingBody(flavor.name));
    }),
    banner: const SlideScreenshot(
      'steam.png',
      alignment: Alignment.topLeft,
      fit: BoxFit.cover,
    ),
    table: SlideTable(
      rows: [
        [
          Text(lang.installationSlidesIncluded),
          const SlideLabel(
            icon: SlideIcon('gamemode.png'),
            label: Text('Feral GameMode'),
          ),
        ],
        [
          Text(lang.installationSlidesAvailable),
          const SlideLabel(
            icon: SlideIcon('steam.png'),
            label: Text('Steam'),
          ),
          const SlideLabel(
            icon: SlideIcon('discord.png'),
            label: Text('Discord'),
          ),
          const SlideLabel(
            icon: SlideIcon('obs.png'),
            label: Text('OBS Studio'),
          ),
        ],
      ],
    ),
  );
}

Widget _buildSecuritySlide(BuildContext context) {
  final lang = UbuntuBootstrapLocalizations.of(context);
  return LandscapeSlideLayout(
    title: Text(lang.installationSlidesSecurityTitle),
    body: Consumer(builder: (context, ref, child) {
      final flavor = ref.watch(flavorProvider);
      return Text(lang.installationSlidesSecurityBody(flavor.name));
    }),
    // TODO: show installationSlidesSecurityLts in LTS releases
    image: const SlideScreenshot('bitwarden.png'),
    table: SlideTable(
      rows: [
        [
          Text(lang.installationSlidesIncluded),
          const SlideLabel(
            icon: SlideIcon('firefox.png'),
            label: Text('Firefox'),
          ),
          const SlideLabel(
            icon: SlideIcon('wireguard.png'),
            label: Text('WireGuard'),
          ),
        ],
        [
          Text(lang.installationSlidesAvailable),
          const SlideLabel(
            icon: SlideIcon('brave.png'),
            label: Text('Brave'),
          ),
          const SlideLabel(
            icon: SlideIcon('bitwarden.png'),
            label: Text('Bitwarden'),
          ),
        ],
      ],
    ),
  );
}

Widget _buildProductivitySlide(BuildContext context) {
  final lang = UbuntuBootstrapLocalizations.of(context);
  return CinematicSlideLayout(
    title: Text(lang.installationSlidesProductivityTitle),
    body: Consumer(builder: (context, ref, child) {
      final flavor = ref.watch(flavorProvider);
      return Text(lang.installationSlidesProductivityBody(flavor.name));
    }),
    banner: const SlideScreenshot(
      'libreoffice.png',
      alignment: Alignment.topLeft,
      fit: BoxFit.cover,
    ),
    table: SlideTable(
      rows: [
        [
          Text(lang.installationSlidesAvailable),
          const SlideLabel(
            icon: SlideIcon('thunderbird.png'),
            label: Text('Thunderbird'),
          ),
          const SlideLabel(
            icon: SlideIcon('libreoffice.png'),
            label: Text('LibreOffice'),
          ),
        ],
        [
          Text(lang.installationSlidesAvailable),
          const SlideLabel(
            icon: SlideIcon('teams.png'),
            label: Text('Microsoft Teams'),
          ),
          const SlideLabel(
            icon: SlideIcon('slack.png'),
            label: Text('Slack'),
          ),
        ],
      ],
    ),
  );
}

Widget _buildAccessibilitySlide(BuildContext context) {
  final lang = UbuntuBootstrapLocalizations.of(context);
  return PortraitSlideLayout(
    title: Text(lang.installationSlidesAccessibilityTitle),
    body: Consumer(builder: (context, ref, child) {
      final flavor = ref.watch(flavorProvider);
      return Text(lang.installationSlidesAccessibilityBody(flavor.name));
    }),
    image: const SlideScreenshot('accessibility.png'),
    table: SlideTable(
      rows: [
        [
          Text(lang.installationSlidesIncluded),
          SlideLabel(
            icon: const SlideIcon('languages.png'),
            label: Text(lang.installationSlidesAccessibilityLanguages),
          ),
          SlideLabel(
            icon: const SlideIcon('orca.png'),
            label: Text(lang.installationSlidesAccessibilityOrca),
          ),
        ],
        [
          Text(lang.installationSlidesAvailable),
          const SlideLabel(
            icon: SlideIcon('writer.png'),
            label: Text('LibreOffice Writer'),
          ),
        ],
      ],
    ),
  );
}

Widget _buildSupportSlide(BuildContext context) {
  final lang = UbuntuBootstrapLocalizations.of(context);
  return OutroSlideLayout(
    title: Text(lang.installationSlidesSupportTitle),
    body: SlideColumn(
      children: [
        Consumer(builder: (context, ref, child) {
          final flavor = ref.watch(flavorProvider);
          return Text(lang.installationSlidesSupportHeader(flavor.name));
        }),
        Text(lang.installationSlidesSupportCommunity),
        Text(lang.installationSlidesSupportEnterprise),
      ],
    ),
    image: SvgPicture.asset(
      slideAsset('ask-ubuntu-${Theme.of(context).brightness.name}.svg'),
    ),
    list: SlideList(
      children: [
        SlideLink(
          text: lang.installationSlidesSupportDocumentation,
          url: 'https://help.ubuntu.com',
        ),
        const SlideLink(
          text: 'Ask Ubuntu',
          url: 'https://askubuntu.com',
        ),
        const SlideLink(
          text: 'Ubuntu Discourse',
          url: 'https://discourse.ubuntu.com',
        ),
        SlideLink(
          text: lang.installationSlidesSupportUbuntuPro,
          url: 'https://ubuntu.com/pro',
        ),
      ],
    ),
  );
}
