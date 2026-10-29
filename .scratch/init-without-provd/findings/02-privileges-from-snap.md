# Privileges from `ubuntu-desktop-init` snap

## Conclusion

Direct system-bus calls are viable for AccountsService, `systemd-localed`,
`systemd-timedated`, and `systemd-hostnamed`, provided the snap is connected to
the corresponding privileged interfaces. They are not made privileged merely by
adding a `polkit` plug: the target daemon still performs its own polkit check,
and the snap must be permitted by AppArmor as well. GDM is the exception: there
is no standard snap interface for GDM's system/private buses, so a strict snap
cannot reproduce the current GDM client with existing interfaces alone.

## Interfaces and calls

| Operation | D-Bus API / current implementation | Snap interface and result |
| --- | --- | --- |
| Create administrator, set password and automatic login | `org.freedesktop.Accounts.CreateUser`; `org.freedesktop.Accounts.User.SetPassword` and `SetAutomaticLogin` (see `provd/internal/services/user/user.go`) | `account-control` grants the AccountsService D-Bus paths and invokes `useradd`/`chpasswd`. It is not auto-connected and its declaration restricts installation to management snaps from a brand store; this is a distribution/approval constraint, not a polkit rule. Source: [snapd account_control.go](https://github.com/snapcore/snapd/blob/master/interfaces/builtin/account_control.go), [interface docs](https://staging-api.snapcraft.io/docs/account-control-interface). |
| System locale and keyboard | `org.freedesktop.locale1.SetLocale`, `SetX11Keyboard`, `SetVConsoleKeyboard` | `locale-control` allows these exact calls and property reads (and `/etc/default/locale`). It is not auto-connected. Source: [snapd locale_control.go](https://github.com/snapcore/snapd/blob/master/interfaces/builtin/locale_control.go). |
| Timezone | `org.freedesktop.timedate1.SetTimezone`; `ListTimezones` and `Timezone` property | `timezone-control` allows the calls and `/etc/timezone` and `/etc/localtime` access. It is not auto-connected. Source: [snapd timezone_control.go](https://github.com/snapcore/snapd/blob/master/interfaces/builtin/timezone_control.go), [systemd timedate1 API](https://www.freedesktop.org/software/systemd/man/latest/org.freedesktop.timedated.html). |
| Hostname (also done by current user service) | `org.freedesktop.hostname1.SetStaticHostname` | `hostname-control` allows the hostname1 calls and hostname file access. It is not auto-connected. Source: [snapd hostname_control.go](https://github.com/snapcore/snapd/blob/master/interfaces/builtin/hostname_control.go). |
| Launch the created desktop session | `org.gnome.DisplayManager.Manager.OpenSession` on the system bus, then GDM's private session bus (`UserVerifier`/`Greeter`) | No built-in `gdm-control` interface exists. The generic `dbus` interface is for communicating with another snap's declared D-Bus slot; it does not whitelist arbitrary host services. A strict snap therefore needs a new snapd interface/slot policy or a privileged host-side helper. Current provd uses exactly this two-bus sequence (`provd/internal/services/gdm/gdm.go`). |

The 2023 Ubuntu Desktop Installer investigation independently records the same
availability boundary: AccountsService (`account_control`), hostnamed
(`hostname_control`), and timedated (`timezone_control`) were available, while
locale1 and the GNOME session manager were not. Source: [issue #2148](https://github.com/canonical/ubuntu-desktop-installer/issues/2148).

## Polkit

The relevant target actions are:

* AccountsService: `org.freedesktop.accounts.user-administration` (the
  AccountsService D-Bus specification requires this for creating/deleting users
  and changing passwords; source: [AccountsService XML](https://cgit.freedesktop.org/accountsservice/tree/data/org.freedesktop.Accounts.xml)).
* localed: `org.freedesktop.locale1.set-locale` and
  `org.freedesktop.locale1.set-keyboard` (source: [systemd locale1 API](https://www.freedesktop.org/software/systemd/man/latest/org.freedesktop.locale1.html)).
* timedated: `org.freedesktop.timedate1.set-timezone` (source: [systemd timedate1 API](https://www.freedesktop.org/software/systemd/man/latest/org.freedesktop.timedate1.html)).

`interactive=false` is what the existing provd calls pass. Therefore the
initial-setup subject must already be authorized by the distro's polkit policy;
there is no opportunity for a normal authentication-agent prompt. The snap's
`polkit` interface only permits calling polkit's `CheckAuthorization` API and,
with separately approved attributes, installing a policy/rule owned by the
snap. It does not override AccountsService/localed/timedated authorization, and
`install-rules` is super-privileged, hash-checked, and requires store
declaration approval. Source: [snap polkit interface](https://snapcraft.io/docs/polkit-interface),
[polkit architecture](https://www.freedesktop.org/software/polkit/docs/latest/polkit.html).

The practical design should first test the real gnome-initial-setup session's
polkit identity against these actions. Do not solve a denial by adding a broad
snap-installed rule: it would grant the snap authority over host policy and
requires explicit security review. Also note that a polkit allow cannot repair
an AppArmor denial from a missing snap interface.

## What provd adds beyond D-Bus

For the four privileged services, provd is mostly a gRPC façade and validation/
rollback layer; the state-changing work is already performed by the system
services. Specific non-D-Bus work in the current code is:

* username reservation validation reads
  `/usr/share/base-passwd/passwd.master` and `group.master`;
* locale validation reads `/usr/share/i18n/SUPPORTED`;
* timezone validation calls the D-Bus `ListTimezones` method (so it has a
  native equivalent);
* password hashing happens in provd before `SetPassword` (the Dart native
  implementation must retain equivalent hashing or use an appropriate API).

The current service code does not write those host files in production. Test
fixtures and the daemon's own socket/configuration are incidental. Account
creation, password setting, autologin, hostname, locale, keyboard, and timezone
changes all have direct service APIs. The remaining major gap is GDM's
system/private bus hand-off, not a missing file-write equivalent.

## Historical baseline

The pre-provd implementation was the same native-D-Bus model: the migrated
native commits in this repository restore it in `apps/ubuntu_init` (for example,
`ba72bcdd4` for AccountsService, `bb3f62544` for locale/keyboard/timezone, and
`1a1ed996b` for GDM). Provd consolidated those calls behind its Unix-socket gRPC
daemon; it did not introduce a separate privileged mechanism for these service
operations.
