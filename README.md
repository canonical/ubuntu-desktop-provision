# Ubuntu Desktop Provision

[![CI](https://github.com/canonical/ubuntu-desktop-provision/actions/workflows/ci.yml/badge.svg)](https://github.com/canonical/ubuntu-desktop-provision/actions/workflows/ci.yml)
[![codecov](https://codecov.io/gh/canonical/ubuntu-desktop-provision/branch/main/graph/badge.svg?token=JcedDc47dU)](https://codecov.io/gh/canonical/ubuntu-desktop-provision)
[![screenshots](https://img.shields.io/badge/screenshots-gray?logo=ubuntu)](https://github.com/canonical/ubuntu-desktop-provision-screenshots)

## Bugs

Please report any bugs related to Ubuntu Desktop Provision on [Launchpad](https://bugs.launchpad.net/ubuntu-desktop-provision).
We use the GitHub issue tracker only for issues related to the development of Ubuntu Desktop Provision itself.

## Configuration

The Flutter UI can be configured using a [YAML](https://yaml.org/) file.
  ```yaml
  theme:
    accent-color: "#ff0000"
    elevated-button-color: "#00ff00"
    elevated-button-text-color: "#0000ff"
    window-title: "Custom Window Title"

  pages:
    locale:
      title: "Custom Title for Locale Page"
      image: "/path/to/image.png"
      visible: true
    ...
  ```

Lookup order:
- `/etc/ubuntu-provision.{yaml,yml}` (admin)
- `/usr/local/share/ubuntu-provision.{yaml,yml}` (oem)
- `/usr/share/ubuntu-provision.{yaml,yml}` (distro)

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
