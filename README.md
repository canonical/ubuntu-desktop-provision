# Ubuntu Desktop Provision

[![CI](https://github.com/canonical/ubuntu-desktop-provision/actions/workflows/ci.yml/badge.svg)](https://github.com/canonical/ubuntu-desktop-provision/actions/workflows/ci.yml)
[![codecov](https://codecov.io/gh/canonical/ubuntu-desktop-provision/branch/main/graph/badge.svg?token=JcedDc47dU)](https://codecov.io/gh/canonical/ubuntu-desktop-provision)
[![screenshots](https://img.shields.io/badge/screenshots-gray?logo=ubuntu)](https://github.com/canonical/ubuntu-desktop-provision-screenshots)

```mermaid
classDiagram
    ubuntu_bootstrap <|-- ubuntu_desktop_installer
    ubuntu_bootstrap <|-- ubuntu_flavor_installer
    ubuntu_init <|-- ubuntu_core_desktop_init
    ubuntu_init <|-- ubuntu_welcome
    ubuntu_provision <|-- ubuntu_bootstrap
    ubuntu_provision <|-- ubuntu_init
    ubuntu_provision: - shared pages
    ubuntu_provision: - service interfaces
    ubuntu_bootstrap: - subiquity-based services
    ubuntu_bootstrap: - configurable subset of pages
    ubuntu_init: - xdg/dbus/gsettings-based services
    ubuntu_init: - configurable subset of pages
    ubuntu_desktop_installer: - (main.dart)
    ubuntu_desktop_installer: - provision.conf
    ubuntu_desktop_installer: - snapcraft.yaml
    ubuntu_flavor_installer: - (main.dart)
    ubuntu_flavor_installer: - provision.conf
    ubuntu_flavor_installer: - snapcraft.yaml
    ubuntu_core_desktop_init: - (main.dart)
    ubuntu_core_desktop_init: - provision.conf
    ubuntu_core_desktop_init: - snapcraft.yaml
    ubuntu_welcome: - (main.dart)
    ubuntu_welcome: - provision.conf
    ubuntu_welcome: - snapcraft.yaml
```

## Used by

- [Ubuntu Desktop Installer](https://github.com/canonical/ubuntu-desktop-installer)
- [Ubuntu Core Desktop Init](https://github.com/canonical/ubuntu-core-desktop-init)
- [Ubuntu Welcome](https://github.com/canonical/ubuntu-welcome)

## Configuration

Supported formats:
- [TOML](https://toml.io/) (`.conf`)

    ```toml
    [bootstrap]
    pages = "locale,keyboard,source,storage"

    [init]
    pages = "timezone,identity"
    ```

- [YAML](https://yaml.org/) (`.yaml`, `.yml`)

    ```yaml
    bootstrap:
      pages:
        - locale
        - keyboard
        - source
        - storage

    init:
      pages:
        - timezone
        - identity
    ```

Lookup order:
- `/etc/ubuntu-provision.{conf,yaml,yml}` (admin)
- `/usr/local/share/ubuntu-provision.{conf,yaml,yml}` (oem)
- `/usr/share/ubuntu-provision.{conf,yaml,yml}` (distro)
- `<app>/data/flutter_assets/ubuntu-provision.{conf,yaml,yml}` (app)

## Contributing

See our [contributor guidelines](CONTRIBUTING.md).

## License

The Ubuntu Desktop Provision is licensed under the [GNU General Public License version 3](LICENSE).
