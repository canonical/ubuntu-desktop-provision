# Ubuntu Desktop Provision

[![CI](https://github.com/canonical/ubuntu-desktop-provision/actions/workflows/ci.yml/badge.svg)](https://github.com/canonical/ubuntu-desktop-provision/actions/workflows/ci.yml)
[![codecov](https://codecov.io/gh/canonical/ubuntu-desktop-provision/branch/main/graph/badge.svg?token=JcedDc47dU)](https://codecov.io/gh/canonical/ubuntu-desktop-provision)
[![screenshots](https://img.shields.io/badge/screenshots-gray?logo=ubuntu)](https://github.com/canonical/ubuntu-desktop-provision-screenshots)

## Bugs

Please report any bugs related to Ubuntu Desktop Provision on [Launchpad](https://bugs.launchpad.net/ubuntu-desktop-provision).
We use the GitHub issue tracker only for issues related to the development of Ubuntu Desktop Provision itself.

## Configuration

The full configuration guide can be read [here](https://docs.google.com/document/d/10R0YOj4e8BTv6XPw9OE_y7GDy72xPqA5XP5lu0M7VbE/edit?usp=sharing).

But the basics are that the UI can be configured using a [YAML](https://yaml.org/) file that is read from here:
`/usr/share/desktop-provision/whitelabel.yaml`

The configuration file has the following structure:

```yaml
# (Optional) Drives overall behaviour for specific provisioners.
#
# Options:
# - standard (default): the common provision flow for Ubuntu Desktop and Flavours
# - oem: enables the eula page and disables the user creation page during bootstrap
mode: standard | oem

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
flavour: <name>

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

# (Optional) Override a page's image asset.
# Images expected in /usr/share/desktop-provision/images/<image-name>
#
# Bootstrap pages:
# - locale: Select the interface language
# - accessibility: Allow user to configure GNOME accessibility options
# - rst: Identifies if the computer has Intel Rapid Storage Technology (rst) active
# - keyboard: Set keyboard layout
# - network: Connect to a network
# - refresh: Expose installer's auto-update mechanism
# - source: Install 3'rd party drivers and codecs
# - not-enough-disk-space: Notifies if there is insufficient disk space
# - secure-boot: Handles secure boot
# - storage: Select target disk and partition
# - identity: Create the first-user account (only displaed if mode = default)
# - confirm: A summary of the installation and confirmation button to start the install
#
# Init pages (for oem only)
# - identity: Create the first-user account 
# - ubuntu-pro: Enable Ubuntu Pro
# - privacy: Enable location services
# - timezone: Set the timezone
# - telemetry: Enable sending telemetry
pages:
  <page-name>:
  image: <image-name>
```

## Repository Structure

### Frontend

The UI is written in [Flutter](https://flutter.dev/) and consists of multiple Dart/Flutter packages contained in `packages/`. The most important ones are:
* `ubuntu_bootstrap` - Flutter UI that drives `subiquity` in the 'device bootstrap' stage. This is the core of the `ubuntu-desktop-bootstrap` snap built from the `bootstrap-snap` branch and replaces the `ubuntu-desktop-installer`.
* `ubuntu_init` - Flutter UI that drives `provd` in the 'first boot initialization' stage. This is the core of the `ubuntu-desktop-init` snap built from the `init-snap` branch and serves as a replacement for `gnome-initial-setup`.
* `ubuntu_provision` - Flutter package that contains shared code and pages used by both `ubuntu_bootstrap` and `ubuntu_init`.
* `ubuntu_wizard` - Flutter package that provides the common wizard-style UI framework.
* `subiquity_client` and `provd_client` - Dart packages that provide a client library for the different backends.

### Backend

TODO

## Translations

TODO

## Contributing

See our [contributor guidelines](CONTRIBUTING.md).

## License

The Ubuntu Desktop Provision is licensed under the [GNU General Public License version 3](LICENSE).
