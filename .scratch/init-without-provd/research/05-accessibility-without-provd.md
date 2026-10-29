# Accessibility without provd

## Finding

`ubuntu_bootstrap` already contains a native implementation of the shared
`ubuntu_provision` `AccessibilityService`: `GnomeAccessibilityService` in
`apps/ubuntu_bootstrap/lib/services/gnome_accessibility_service.dart`. It uses
the Dart `gsettings` package (which uses the user's GSettings/D-Bus session)
and is registered at bootstrap startup. `ubuntu_provision` itself contains
only the interface (`lib/src/services/accessibility_service.dart`), not an
implementation. `ubuntu_init` already depends on both `gsettings` and
`ubuntu_provision`, but currently registers `ProvdAccessibilityService`.

The implementation can therefore be adapted for init (preferably moved to a
shared implementation package/location rather than making init depend on the
bootstrap app). Its behavior and tests provide the native implementation
contract to preserve.

## Keys touched by provd

The provd implementation constructs these five GSettings schemas in
`provd/internal/services/accessibility/accessibility.go`:

| Accessibility group | GSettings schema and keys | Meaning / conversion |
| --- | --- | --- |
| `seeing` | `org.gnome.desktop.a11y.interface::high-contrast` | Boolean, direct. |
| `seeing` | `org.gnome.desktop.interface::enable-animations` | Boolean inverse: reduced motion enabled means `enable-animations=false`. |
| `seeing` | `org.gnome.desktop.interface::text-scaling-factor` | Double: large text is exactly `1.25`; default is `1.0`. |
| `seeing` | `org.gnome.desktop.a11y.applications::screen-reader-enabled` | Boolean, direct. |
| `hearing` | `org.gnome.desktop.wm.preferences::visual-bell` | Boolean, direct. |
| `typing` | `org.gnome.desktop.a11y.applications::screen-keyboard-enabled` | Boolean, direct. This exists in provd even though the current shared UI/service interface does not expose a screen-keyboard operation. |
| `typing` | `org.gnome.desktop.a11y.keyboard::stickykeys-enable` | Boolean, direct. |
| `typing` | `org.gnome.desktop.a11y.keyboard::slowkeys-enable` | Boolean, direct. |
| `zoom` | `org.gnome.desktop.a11y.applications::screen-magnifier-enabled` | Boolean, direct. |
| `pointing_and_clicking` | `org.gnome.desktop.a11y.keyboard::mousekeys-enable` | Boolean, direct. |

The authoritative mapping is in provd's `seeing.go`, `hearing.go`,
`typing.go`, `zoom.go`, and `pointing_and_clicking.go`. The native bootstrap
implementation covers all of the shared operations with the same keys and
conversions. It additionally implements screen-reader locale by writing an
Orca systemd-user override and restarting Orca; that is separate from the
GSettings keys.

## Snap confinement

These are per-user desktop preferences, not privileged system settings. A
strictly confined snap cannot assume that a normal GSettings write reaches the
host user's dconf database. Snapd's `gsettings` interface is specifically
described as allowing access to “any gsettings item of current user”; its
AppArmor policy grants access to the session D-Bus dconf writer and to
`$HOME/.config/dconf/user` / the session dconf file. The init snap should
declare the `gsettings` plug (and ensure it is connected) for these writes to
affect the desktop session.

The `gsettings` plug is broad: snapd explicitly notes that it permits
adjusting other applications' settings and access to sensitive GSettings
data. It is nevertheless the intended interface for this operation. The
regular desktop/session interfaces are not a replacement for the dconf writer
permission. Validate the final `ubuntu-desktop-init` snap's interfaces and
session-bus environment in an installed strict snap; a missing plug should be
treated as an unsupported/failed native service, not silently accepted as a
successful host-setting change.

The `gsettings.dart` project also documents that, under confinement, GLib may
use a private keyfile backend when it cannot access GSettings; that behavior
would make writes local to the snap rather than host-visible. Do not rely on
that fallback for init's purpose—provide the plug and test the actual snap.

The native service catches read/write exceptions and reports unsupported or
false/default values, so the existing error-tolerant behavior can be retained.
The Orca locale path is a separate confinement concern: it writes
`$HOME/.config/systemd/user/orca.service.d/override.conf` and runs
`systemctl --user`; it needs the user's session and suitable home access. It
is not required to implement the GSettings toggles themselves.

## Recommendation

Replace init's `ProvdAccessibilityService` registration with an adapted
`GnomeAccessibilityService`, preserving the shared interface and the
bootstrap tests. Keep the ten-key mapping above as the compatibility target,
add/verify the snap's `gsettings` plug, and test reads and writes in a real
strict desktop session. No polkit or system-bus privilege is needed for these
per-user GSettings operations.

## Sources

### Repository primary sources

- [provd schema construction](https://github.com/canonical/ubuntu-desktop-provision/blob/main/provd/internal/services/accessibility/accessibility.go)
- [provd seeing mapping](https://github.com/canonical/ubuntu-desktop-provision/blob/main/provd/internal/services/accessibility/seeing.go)
- [provd hearing mapping](https://github.com/canonical/ubuntu-desktop-provision/blob/main/provd/internal/services/accessibility/hearing.go)
- [provd typing mapping](https://github.com/canonical/ubuntu-desktop-provision/blob/main/provd/internal/services/accessibility/typing.go)
- [provd zoom mapping](https://github.com/canonical/ubuntu-desktop-provision/blob/main/provd/internal/services/accessibility/zoom.go)
- [provd pointing-and-clicking mapping](https://github.com/canonical/ubuntu-desktop-provision/blob/main/provd/internal/services/accessibility/pointing_and_clicking.go)
- [native GNOME implementation](https://github.com/canonical/ubuntu-desktop-provision/blob/main/apps/ubuntu_bootstrap/lib/services/gnome_accessibility_service.dart)
- [native implementation tests](https://github.com/canonical/ubuntu-desktop-provision/blob/main/apps/ubuntu_bootstrap/test/services/gnome_accessibility_service_test.dart)
- [shared AccessibilityService interface](https://github.com/canonical/ubuntu-desktop-provision/blob/main/packages/ubuntu_provision/lib/src/services/accessibility_service.dart)

### Upstream primary sources

- [snapd `gsettings` interface policy](https://github.com/snapcore/snapd/blob/master/interfaces/builtin/gsettings.go)
- [Snapcraft GNOME app example declaring `gsettings`](https://documentation.ubuntu.com/snapcraft/latest/how-to/integrations/craft-a-gtk4-app/)
- [Snap confinement and interfaces](https://documentation.ubuntu.com/security/security-features/privilege-restriction/snap-confinement/)
- [GNOME `org.gnome.desktop.interface` schema](https://gitlab.gnome.org/GNOME/gsettings-desktop-schemas/-/raw/main/schemas/org.gnome.desktop.interface.gschema.xml.in)
- [canonical `gsettings.dart`](https://github.com/canonical/gsettings.dart/), including its confinement/keyfile-backend discussion
