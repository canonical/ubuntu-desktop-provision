# Telemetry without provd

## Decision summary

Use **Ubuntu Insights**, not `ubuntu-report`, for new code. Insights is the
first-party replacement for Ubuntu Report, and its client has both Go and C
APIs. There is no existing Dart `ubuntu-insights`/`sysmetrics` package in this
repository (and `ubuntu_bootstrap` does not currently depend on one). The
native Dart implementation should therefore either:

1. bind the packaged Insights C API with `dart:ffi` (the preferred long-term
   seam), or
2. invoke the installed `ubuntu-insights` executable as a short-term adapter.

Do not copy the old `sysmetrics` FFI package or retain the provd gRPC contract.
If the first-boot UI is still responsible for consent, model consent before
collection and upload, and expose the report for review before sending it.

## What provd does today

The repository's provd telemetry implementation is an adapter around
`github.com/ubuntu/ubuntu-report/pkg/sysmetrics` (currently v1.7.4 in
`provd/go.mod`). It exposes three gRPC calls:

* `Collect`: calls `sysmetrics.Collect()` and returns the metrics JSON.
* `CollectAndSend`: calls `sysmetrics.CollectAndSend(ReportAuto, false, "")`.
* `SendDecline`: calls `sysmetrics.SendDecline(false, "")`.

The two send operations classify the specific DNS failure for
`metrics.ubuntu.com` as `NETWORK_ERROR`; other failures become
`UNKNOWN_ERROR`. The protobuf contract is in `provd/protos/telemetry.proto`,
and the implementation is
`provd/internal/services/telemetry/telemetry.go`.

The Dart `ProvdTelemetryClient` is only a generated-gRPC wrapper around those
three methods. `ubuntu_init`'s telemetry model defaults to enabled, calls
`collect()` for preview, then calls `collectAndSend()` or `sendDecline()` on
save. This is the behavior to preserve at the UI level, not the backend
boundary.

Sources:

* [provd telemetry implementation](https://github.com/canonical/ubuntu-desktop-provision/blob/main/provd/internal/services/telemetry/telemetry.go)
* [telemetry protobuf](https://github.com/canonical/ubuntu-desktop-provision/blob/main/provd/protos/telemetry.proto)
* [Dart provd client](https://github.com/canonical/ubuntu-desktop-provision/blob/main/packages/provd_client/lib/src/provd_telemetry_client.dart)
* [telemetry model](https://github.com/canonical/ubuntu-desktop-provision/blob/main/packages/ubuntu_init/lib/src/telemetry/telemetry_model.dart)

## What the pre-provd sysmetrics path did

The deleted `packages/sysmetrics` package was a Dart FFI wrapper around
`libsysmetrics`, with calls run in `Isolate.run`:

* `collect()` returned a pretty-printed report.
* `collectAndSend(ReportType.auto)` collected and uploaded without prompting.
* `sendDecline()` uploaded an opt-out report.
* `sendReport()` uploaded supplied report data.

The underlying API suppressed repeat reports for a distribution version unless
`alwaysReport` was requested, and accepted an optional alternate server URL.
The package was removed in commit
[`0f7b08fe3`](https://github.com/canonical/ubuntu-desktop-provision/commit/0f7b08fe39fc6abcd69fd8f73469fa31d7e21f9a),
after the init app was switched to provd in
[`4f6f0d2`](https://github.com/canonical/ubuntu-desktop-provision/commit/4f6f0d279b59bd41f91ce19f16a19517d61f60e9).
The historical Dart wrapper can be inspected at the parent of the removal
commit, `packages/sysmetrics/lib/src/sysmetrics.dart`.

Sources:

* [historical sysmetrics Dart wrapper](https://github.com/canonical/ubuntu-desktop-provision/blob/0f7b08fe39fc6abcd69fd8f73469fa31d7e21f9a^/packages/sysmetrics/lib/src/sysmetrics.dart)
* [replacement commit](https://github.com/canonical/ubuntu-desktop-provision/commit/4f6f0d279b59bd41f91ce19f16a19517d61f60e9)
* [ubuntu-report API and consent behavior](https://github.com/ubuntu/ubuntu-report#about)

## Current recommendation: Ubuntu Insights

The official `ubuntu/ubuntu-insights` README describes Insights as a
transparent, user-controlled, cross-application reporting solution and a
full replacement for Ubuntu Report. Its client is packaged as a deb and
provides a CLI plus Go and C APIs. The server remains backwards compatible,
so this is a migration of the client/API rather than a new telemetry
destination.

The Go API gives the required native seam:

* `Config.Compile` builds a pretty-printed report without checking consent.
* `Config.SetConsentState` and `GetConsentState` manage per-source consent.
* `Config.Collect` compiles and writes a report, honoring consent; with false
  consent it writes an `OptOut` report while still returning the compiled
  report to the caller.
* `Config.Upload` uploads cached reports. It can handle all cached sources,
  has retry support in the uploader, and defaults to `https://metrics.ubuntu.com`.
* A system-wide opt-out can override per-source consent.

The C API exports the same operations (`insights_compile`, `insights_write`,
`insights_upload`, consent getters/setters, and system opt-out getters/setters)
and is explicitly intended for embedding. This makes a small Dart FFI package
possible, but the ABI/header and `libinsights` package must be shipped into the
first-boot snap. Calling the CLI avoids writing bindings but is less strongly
typed and requires coordinating its cache/consent paths.

Sources:

* [Ubuntu Insights README](https://github.com/ubuntu/ubuntu-insights/blob/main/README.md)
* [Insights Go API](https://github.com/ubuntu/ubuntu-insights/blob/main/insights/api.go)
* [Insights C API](https://github.com/ubuntu/ubuntu-insights/blob/main/insights/C/libinsights.go)
* [Insights consent manager](https://github.com/ubuntu/ubuntu-insights/blob/main/insights/internal/consent/consent.go)
* [Insights uploader](https://github.com/ubuntu/ubuntu-insights/blob/main/insights/internal/uploader/uploader.go)

## Implementation implications for Dart first boot

1. Keep the existing preview/consent UX: collect/compile first, show exactly
   what will be sent, then persist consent and upload (or upload opt-out).
2. Prefer a new small Dart package around the Insights C API rather than a
   service-specific implementation. Run blocking FFI calls off the UI isolate,
   as the removed sysmetrics wrapper did.
3. Define explicit result/error mapping for collection, consent, and upload;
   Insights has separate collection and upload errors, so do not preserve
   provd's DNS-string matching as the abstraction.
4. Decide whether first boot owns the Insights cache and consent directories.
   If it does, pass explicit paths through the C API so the snap's data is
   stable and reviewable; otherwise use the installed CLI's documented
   defaults. A system opt-out must always be honored.
5. There is no repository precedent for a Dart Insights binding: current
   searches find only the deleted `packages/sysmetrics` package in history and
   the current `provd_client`/`provd` code. `ubuntu_bootstrap` has no telemetry
   dependency. This work should include packaging the native library and a
   focused Dart wrapper/test seam.
