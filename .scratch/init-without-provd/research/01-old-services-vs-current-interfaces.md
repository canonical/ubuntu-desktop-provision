# Old services versus current interfaces

Research point-in-time: 2026-10-29. The comparison is against `main` at
`a64330a62`; the `init-drop-provd` branch was not used.

## Executive summary

The shared `ubuntu_provision` interfaces have barely drifted since the native
services were replaced. Locale, timezone, and identity retain the same public
methods; keyboard also retains the old method set, but its implementation was
already a two-backend operation (systemd-localed plus GNOME input sources).
Privacy and GDM are the exceptions: they are app-local interfaces, and the
current provd versions are narrower than the removed native implementations.
The likely implementation order is locale/timezone (S), privacy (M), keyboard
(M), identity (L), and GDM (L).

## Service-by-service findings

| Service | Current interface / drift | Old dependencies and native behavior | Adaptation estimate |
|---|---|---|---|
| **Locale** | `LocaleService` is still just `getLocale()` and `setLocale(String)` ([current interface](https://github.com/canonical/ubuntu-desktop-provision/blob/main/packages/ubuntu_provision/lib/src/services/locale_service.dart)). No API drift. | `XdgLocaleService` connected to `xdg_locale`, read `LANG`, and set every returned locale variable to the selected value ([removed in `0bbaa61`](https://github.com/canonical/ubuntu-desktop-provision/commit/0bbaa6168)). It used `dbus` transitively/directly and `xdg_locale`. `xdg_locale` is no longer a repo dependency. | **S (about 1–2 days)**: reintroduce a small localed D-Bus adapter, or update/reuse the old client. Check polkit/error handling and preserve the `LANG` fallback. |
| **Keyboard** | `KeyboardService` still has `getKeyboard`, `setKeyboard`, `setInputSource`, `getKeyboardStep`, and `canDetectLayout` ([current interface](https://github.com/canonical/ubuntu-desktop-provision/blob/main/packages/ubuntu_provision/lib/src/services/keyboard_service.dart)). The models still come from `subiquity_client`; no signature drift. | The old adapter read localed X11 layout/variant and vConsole toggle, loaded keyboard JSON assets, wrote `org.gnome.desktop.input-sources` through `gsettings`, and explicitly did not support detection ([removed in `da29c0e`](https://github.com/canonical/ubuntu-desktop-provision/commit/da29c0eb4)). Dependencies: `dbus`, `xdg_locale`, `gsettings`, `ubuntu_service` (service locator), Flutter assets/logging. | **M (about 3–5 days)**: localed calls are straightforward, but the GNOME input-source serialization, asset lookup, and two independent state stores need tests. `getKeyboardStep` remains unsupported unless detection is newly required. |
| **Timezone** | `TimezoneService` remains `getTimezone()` plus `setTimezone(String?)` ([current interface](https://github.com/canonical/ubuntu-desktop-provision/blob/main/packages/ubuntu_provision/lib/src/services/timezone_service.dart)). No API drift. | The old adapter directly called `org.freedesktop.timedate1`: read `Timezone` and called `SetTimezone`, defaulting null to `Etc/UTC` ([removed in `afd956a`](https://github.com/canonical/ubuntu-desktop-provision/commit/afd956a14)). Dependency was `dbus`; no `ubuntu_service` or `gsettings`. | **S (about 1 day)**: almost a direct restoration, with polkit and the existing null/default policy explicitly tested. |
| **Identity** | `IdentityService` still exposes `getIdentity`, `setIdentity`, and `validateUsername`; `Identity` still has real name, username, password, hostname, and auto-login ([current interface](https://github.com/canonical/ubuntu-desktop-provision/blob/main/packages/ubuntu_provision/lib/src/services/identity_service.dart)). No type/method drift since the interface was moved into the shared package. | The old implementation used `dbus` to talk to accountsservice and hostname1, `stdlibc.getuid()` to special-case UID 1000, and `crypt` to produce a SHA-512 password hash ([removed in `09155157`](https://github.com/canonical/ubuntu-desktop-provision/commit/09155157f)). It only read the default user (UID 1000), refused to modify it, created non-default users as administrators, set password/automatic-login, and set the static hostname. Username validation was a TODO returning OK. | **L (about 5–10 days)**: the interface is reusable, but account creation/password policy/hostname changes are privileged and the old UID-1000 behavior is incomplete. Decide whether to use accountsservice directly or a supported system API, then add integration-level D-Bus tests. |
| **Privacy** | There is no shared privacy interface. The current app-local `PrivacyService` only has location enabled/disabled, and the provd adapter maps these to enable/disable location calls ([current interface/adapter](https://github.com/canonical/ubuntu-desktop-provision/blob/main/apps/ubuntu_init/lib/services/provd_privacy_service.dart)). | The removed `GnomePrivacyService` had location **and** technical-reporting getters/setters plus `close()`, and used `gsettings` for `org.gnome.system.location` and `org.gnome.desktop.privacy`, `dbus` values, `ubuntu_service` construction, and logging ([removed in `59f8d6f`](https://github.com/canonical/ubuntu-desktop-provision/commit/59f8d6f93)). Enabling location also forced reporting on. | **M (about 3–5 days)** for location-only parity; **M/L** if reporting is restored. The spec must decide whether reporting is still in scope, then restore the two schemas and lifecycle/error semantics. |
| **GDM** | No shared `ubuntu_provision` interface exists. The current app-local `GdmService` only exposes `launchSession(username, password)` and its provd implementation delegates one RPC ([current interface/adapter](https://github.com/canonical/ubuntu-desktop-provision/blob/main/apps/ubuntu_init/lib/services/provd_gdm_service.dart)). | The removed implementation used `dbus` and `org.gnome.DisplayManager.Manager.OpenSession`, created a private session bus, then coordinated UserVerifier/Greeter signals (`BeginVerificationForUser`, `AnswerQuery`, `StartSessionWhenReady`) ([removed in `1f969ad`](https://github.com/canonical/ubuntu-desktop-provision/commit/1f969ad4)). It also had an `init()` lifecycle method and signal-stream test seams. | **L (about 5–10 days)**: this is not a mechanical interface replacement. Recreate the GDM protocol and secure password handling, decide initialization/error/timeout behavior, and test against a real GDM session or a faithful D-Bus test double. |

## Dependency currency

The old services' dependencies have different statuses:

* **`dbus` — current/maintained.** The repo pins `^0.7.10` in both
  `apps/ubuntu_init/pubspec.yaml` and `packages/ubuntu_provision/pubspec.yaml`
  ([repo dependency](https://github.com/canonical/ubuntu-desktop-provision/blob/main/apps/ubuntu_init/pubspec.yaml)); the canonical package's
  registry history has releases after that pin, including 0.7.11 and 0.7.12
  ([pub.dev API](https://pub.dev/api/packages/dbus)). It is the natural native
  transport, though the pin should be reviewed before implementation.
* **`gsettings` — current/maintained.** The repo uses `^0.2.8`; it is a
  canonical package and the registry has a newer 0.2.9 release
  ([pub.dev API](https://pub.dev/api/packages/gsettings)). It remains needed by
  current desktop code, not just the removed keyboard/privacy services.
* **`ubuntu_service` — current/maintained.** The repo uses `^0.4.0`; its
  canonical repository and registry show 0.4.0+1 ([pub.dev API](https://pub.dev/api/packages/ubuntu_service)). It is wiring infrastructure,
  not a system-service protocol, and can be retained or bypassed in a native
  adapter.
* **`xdg_locale` — effectively frozen.** It is absent from current repo
  manifests. The registry exposes only version 0.0.1, published 2023-06-07,
  for systemd-localed ([pub.dev API](https://pub.dev/api/packages/xdg_locale)).
  Prefer direct `dbus` calls or take ownership of a small maintained client
  rather than adding this package back unchanged.
* **`crypt` — usable but stale.** It is absent from `ubuntu_init` and
  `ubuntu_provision` manifests (though another app still declares it); the
  latest registry release is 4.3.1 from 2023-10-09 and supports the current
  Dart SDK range ([pub.dev API](https://pub.dev/api/packages/crypt)). Treat
  password hashing as a security decision rather than assuming this package is
  actively maintained.
* **`stdlibc` — usable but stale.** The repo still declares `^0.1.4`, but the
  registry's latest release is also 0.1.4 from 2023-06-14
  ([pub.dev API](https://pub.dev/api/packages/stdlibc)). It supplies `getuid`
  but should not drive the identity design; Dart/platform alternatives or the
  account service's user model should be considered.

## Sources and method

Primary sources were the `main` branch's current Dart interfaces/manifests,
the six migration commits named by the ticket, and the package registries for
release/maintenance evidence. The migration commits are especially important:
they show the exact removed implementations rather than inferring behavior
from the narrower provd clients. No work from `init-drop-provd` was consulted.
