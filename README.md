# Ubuntu Desktop Provision

[![CI](https://github.com/canonical/ubuntu-desktop-provision/actions/workflows/ci.yml/badge.svg)](https://github.com/canonical/ubuntu-desktop-provision/actions/workflows/ci.yml)
[![codecov](https://codecov.io/gh/canonical/ubuntu-desktop-provision/branch/main/graph/badge.svg?token=JcedDc47dU)](https://codecov.io/gh/canonical/ubuntu-desktop-provision)
[![screenshots](https://img.shields.io/badge/screenshots-gray?logo=ubuntu)](https://github.com/canonical/ubuntu-desktop-provision-screenshots)

## Bugs

This repository houses the Flutter code used by the Ubuntu Installer. If you would like to report a UI bug, or make a feature request, please use the templates found [here](https://github.com/canonical/ubuntu-desktop-provision/issues). If your issue involves backend functionality, please report it under the Subiquity project [here](https://bugs.launchpad.net/ubuntu/+source/subiquity).

## 24.04.1 OEM provisioning

For configuring an OEM provisioning flow for Ubuntu 24.04.1 LTS, where user creation and account setup is handled
seperately to system setup, please refer to [this guide](docs/oem-provisioning-24_04_1.md).

## Configuration

The full configuration guide can be read [here](https://docs.google.com/document/d/10R0YOj4e8BTv6XPw9OE_y7GDy72xPqA5XP5lu0M7VbE/edit?usp=sharing).

But the basics are that the UI can be configured using a [YAML](https://yaml.org/) file that is read from here:
`/usr/share/desktop-provision/whitelabel.yaml`

The configuration file has the following structure:

```yaml
# (Optional) Drives overall behavior for specific provisioners.
#
# Options:
# - standard (default): the common provision flow for Ubuntu Desktop and Flavors
# - oem: enables the eula page and disables the user creation page during bootstrap
# - core-desktop: disables exiting the installer at the end (because there is no
#   live session), and only allows to reboot
mode: standard | oem | core-desktop

# (Optional) When set, the light and dark theme is inherited from ubuntu-flutter-plugins and the distro name is set.
#
# Options:
# - budgie
# - cinnamon
# - edubuntu
# - kubuntu
# - kylin
# - lubuntu
# - mate
# - studio
# - unity
# - xubuntu
flavor: <name>

# (Optional) Sets the window's title (e.g. the text in alt|super + tab)
app-name: <string>

# (Optional) Overrides the theme's accent colors (remember the quotes)
theme:
  light:
    accent-color: <color-hex-code> # i.e. "#ff0011"
    elevated-button-color: <color-hex-code>
    elevated-button-text-color: <color-hex-code>
  dark:
    accent-color: <color-hex-code> # i.e. "#ff0011"
    elevated-button-color: <color-hex-code>
    elevated-button-text-color: <color-hex-code>

# (Optional) Override a page's image asset and whether they should be shown or not.
# Images expected in /usr/share/desktop-provision/images/<image-name>
#
# Bootstrap pages:
# - locale: Select the interface language
# - accessibility: Allow user to configure GNOME accessibility options
# - try-or-install: Choose between trying the live session or installing (only shown when --try-or-install is passed)
# - rst: Identifies if the computer has Intel Rapid Storage Technology (rst) active
# - keyboard: Set keyboard layout
# - network: Connect to a network
# - refresh: Expose installer's auto-update mechanism
# - source-selection: Choose installation source, i.e. which applications that should be installed
# - codecs-and-drivers: Choose if proprietary codecs and drivers should be installed
# - not-enough-disk-space: Notifies if there is insufficient disk space
# - secure-boot: Handles secure boot
# - storage: Select target disk and partition
# - storage-icon: Not a separate page, but sets the distribution icon on the storage page
# - identity: Create the first-user account (only displayed if mode = default)
# - confirm: A summary of the installation and confirmation button to start the install
# - done: Choose whether to restart or continue testing in the live session
# - error: The page that shows when something goes wrong
#
# Init pages (for oem only)
# - identity: Create the first-user account
# - ubuntu-pro-onboarding: Enable Ubuntu Pro
# - eula: Accept the OEM provided EULA
# - privacy: Enable location services
# - timezone: Set the timezone
# - telemetry: Enable sending telemetry
#
# Do note that currently only ubuntu-pro-onboarding, eula, accessibility, try-or-install, refresh and source-selection can be hidden.
pages:
  <page-name>:
    image: <image-name>
    visible: <bool>
```

### Custom Slides

To customize the slides that are shown while the installation is underway you just need to add a slides directory in
`/usr/share/desktop-provision/slides` and add numbered subdirectories with localized html-files and image files in
there. The numbers determine in which order the slides should be. 

An example structure could look like this:

```
/usr/share/desktop-provision
└── slides
   ├── 1
   │   ├── animal.svg
   │   ├── slide_de_DE.svg
   │   ├── slide_en_US.svg
   │   ├── slide_sv_FI.svg
   │   └── slide_sv_SE.html
   ├── 2
   │   ├── slide_en_US.html
   │   └── store.png
   └── 3
       ├── slide_en_US.html
       └── vscode.png
```

If the locale that the user currently is using doesn't have a corresponding html file it will fall back to
`slide_en_US.html`. See the [Language code format section](#language-code-format) for further details about the language
code format.

Do note that the HTML supported in these “html” files is far from the full standard, so we recommend that you use one of
the templates provided as the default slides:
https://github.com/canonical/ubuntu-desktop-provision/tree/main/packages/ubuntu_bootstrap/assets/slides

### EULA

EULA assets are expected to reside in `/usr/share/desktop-provision/eula/` with the file name including the language
code: EULA_<langcode>.pdf. If the <langcode> is not available, the default file EULA.pdf will be used.
The language code format is the same as is used for slides, for example: EULA_en_US.pdf, see the [Language code format
section](#language-code-format) for further details,

### Language code format

The language code format that is used is the two-letter language code followed by a two-letter country code
(see the ISO 639-1 and ISO 3166-1 standards). The language code represents the primary language, while the country code
specifies the regional or national variant of that language. For example en_US represents American English and pt_BR
represents Brazilian Portuguese.

## Repository Structure

### Branches and Snap Packages

Active development for all snaps built from this monorepo takes place on the
`main` branch. To continue supporting Ubuntu releases with bug fixes, dedicated
branches (e.g. `ubuntu/24.04`) are created once development on features for an
upcoming release begins.
Snaps are built from dedicated branches that only contain the snapcraft.yaml
(and related files) for a given snap.
In order to create a new snap build on launchpad the `source-commit` in the
snapcraft.yaml on the corresponding branch (see table below) needs to be updated.

| Snap name | Flutter package | Snap branches |
| - | - | - |
| `ubuntu-desktop-bootstrap` | `ubuntu_bootstrap` | `snap/ubuntu-desktop-bootstrap/*` |
| `ubuntu-desktop-init` | `ubuntu_init` | `snap/ubuntu-desktop-init/*` |
| `factory-reset-tools` | `factory_reset_tools` | `snap/factory-reset-tools/*` |

### Frontend

The UI is written in [Flutter](https://flutter.dev/) and consists of multiple Dart/Flutter packages contained in `packages/`. The most important ones are:
* `ubuntu_bootstrap` - Flutter UI that drives `subiquity` in the 'device bootstrap' stage. This is the core of the `ubuntu-desktop-bootstrap` snap and replaces the `ubuntu-desktop-installer`.
* `ubuntu_init` - Flutter UI that drives `provd` in the 'first boot initialization' stage. This is the core of the `ubuntu-desktop-init` snap and serves as a replacement for `gnome-initial-setup`.
* `ubuntu_provision` - Flutter package that contains shared code and pages used by both `ubuntu_bootstrap` and `ubuntu_init`.
* `ubuntu_wizard` - Flutter package that provides the common wizard-style UI framework.
* `subiquity_client` and `provd_client` - Dart packages that provide a client library for the different backends.

### Backend

TODO

## Contributing

See our [contributor guidelines](docs/CONTRIBUTING.md).

## License

The Ubuntu Desktop Provision is licensed under the [GNU General Public License version 3](LICENSE).
