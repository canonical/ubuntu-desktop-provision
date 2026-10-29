# Ubuntu Pro without `provd`

Research for issue 03, performed against the repository at `main` (commit
`a64330a62`) and the current upstream Ubuntu Pro Client sources on 2026-10-29.

## What the current `provd` interface does

The local protocol is a thin, private gRPC facade:

* `pro.proto` declares `ProMagicAttach(Empty) -> stream ProMagicAttachResponse`,
  `ProAttach(ProAttachRequest{token}) -> ProAttachResponse`, and
  `ProStatus(Empty) -> BoolValue` (`provd/protos/pro.proto:10-13`).
* The Dart client connects over insecure gRPC to the `provd` host/port and only
  exposes the first two methods (`packages/provd_client/lib/src/provd_pro_client.dart:12-34`).
* The init service maps the stream's user-code/refreshed-code/success/error
  values and sends a manual token through that client
  (`apps/ubuntu_init/lib/services/provd_pro_service.dart:4-7,65-81`).
* There is no Go implementation or registration of `ProService`: the service
  manager registers user, locale, keyboard, privacy, timezone, accessibility,
  telemetry, and optionally GDM, but not Pro (`provd/internal/services/manager.go:110-128`).
  Thus this API is currently an unimplemented/legacy contract rather than a
  working backend in this checkout.

## What Ubuntu Pro Client actually provides

The official `canonical/ubuntu-pro-client` source has no public Ubuntu Pro
D-Bus API. Its attach implementation is an HTTP client for the Contracts
service:

* Magic attach uses `POST /v1/magic-attach` to create a token/user code,
  repeatedly `GET /v1/magic-attach` with `Authorization: Bearer <magic token>`
  until `contractToken` is available, and `DELETE /v1/magic-attach` to revoke
  (`uaclient/contract.py`, constants and `UAContractClient` methods).
* A real attach posts the contract token to
  `/v1/context/machines/token`; the response contains the machine token and
  service credentials. The client stores these in
  `/var/lib/ubuntu-advantage/private/machine-token.json` and may enable
  default services (`dev-docs/explanation/what_happens_during_attach.md`).
* The supported public command/API surface is the `pro` executable. The client
  README identifies it as the official tool and says it is installed on Ubuntu
  systems ([README](https://raw.githubusercontent.com/canonical/ubuntu-pro-client/main/README.md)).

There is a systemd `ubuntu-advantage.service` in the upstream project for
cloud auto-attach/upgrade detection, but it is not a D-Bus attach interface.
Consequently, do not design a Dart D-Bus client for `ubuntu-advantage`; no such
stable API is exposed by the Pro Client sources.

## Native-enough Dart integration options

### Recommended: invoke the supported JSON API

Use a small Dart process adapter around the installed `pro` executable:

1. `pro api u.pro.attach.magic.initiate.v1` returns JSON containing
   `user_code`, the short-lived magic `token`, and expiry information.
2. Show `user_code` to the user. Poll with
   `pro api u.pro.attach.magic.wait.v1 --args magic_token=<token>`; the
   successful JSON contains `contract_token` (the upstream implementation polls
   for up to 70 attempts, normally every 10 seconds).
3. Attach with
   `pro api u.pro.attach.token.full_token_attach.v1 --data -`, passing JSON
   containing `token` and optionally `auto_enable_services`; or invoke
   `pro attach <contract-token>` if the CLI's default service behavior is wanted.
4. On cancellation/failure, revoke with
   `pro api u.pro.attach.magic.revoke.v1 --args magic_token=<token>`.

The API endpoint names, JSON envelope, and magic-attach fields are documented
by the upstream project in
[magic_attach_endpoints.md](https://raw.githubusercontent.com/canonical/ubuntu-pro-client/main/dev-docs/how-to/magic_attach_endpoints.md).
The endpoint dispatcher is explicit in
[`uaclient/api/api.py`](https://raw.githubusercontent.com/canonical/ubuntu-pro-client/main/uaclient/api/api.py),
which makes this a versioned local API rather than an undocumented scraping of
human CLI output. Prefer stdin (`--data -`) for the contract token instead of
putting it in process arguments.

### Direct HTTPS is possible but not a good Dart contract

The upstream Python client exposes the underlying Contracts URLs in
`uaclient/contract.py`, but it also supplies configuration, retries, response
mapping, machine metadata, state-file writes, and secret redaction. Calling
those endpoints directly from Dart would duplicate a private service protocol
and still would not remove the privileged local attach operation. Keep the
Contracts interaction behind `pro` unless a separately versioned Canonical API
is agreed.

## Privileges and confinement

* `pro attach` is documented as `sudo pro attach`; the upstream CLI wraps the
  attach action with `assert_root` and an exclusive lock. It writes root-owned
  state and changes system package/service configuration.
* The versioned `pro api` dispatcher itself does not impose root. Magic
  `initiate`, `wait`, and `revoke`, and the read-only `u.pro.status.is_attached.v1`
  endpoint have no root check in their endpoint implementations. That makes
  them suitable for the UI process, subject to access to the `pro` executable
  and its configuration/state.
* The actual
  `u.pro.attach.token.full_token_attach.v1` endpoint explicitly rejects a
  non-root caller and takes the Pro client's lock. It performs the machine
  attach and optional service enabling. Therefore a UI cannot complete attach
  entirely as an ordinary user: use a narrowly scoped privileged helper/process
  for this final step (or run `pro attach` through the system's existing
  privileged launch mechanism), not a broad `sudo` shell.
* The upstream BDD feature confirms that invalid magic wait/revoke API calls
  are exercised as non-root, while the full-token endpoint's implementation
  explicitly raises `NonRootUserError`. These are endpoint-specific privileges,
  not D-Bus/polkit authorization.

## Decision / implementation consequence

Replace `ProvdProService` with a Dart process adapter for `pro api`, preserving
the existing `ProResponse` model. Implement the magic flow using the
initiate/wait JSON endpoints and hand the resulting contract token to a
privileged, narrowly scoped full-token attach operation. Use `pro status` or
`pro api u.pro.status.is_attached.v1` for status. There is no Ubuntu Pro D-Bus
service to replace `provd`, and direct HTTP should remain an implementation
detail of the installed Pro Client rather than a new Dart API.

## Primary sources

* This repository: `provd/protos/pro.proto`,
  `packages/provd_client/lib/src/provd_pro_client.dart`,
  `apps/ubuntu_init/lib/services/provd_pro_service.dart`, and
  `provd/internal/services/manager.go` at commit `a64330a62`.
* Canonical Ubuntu Pro Client source: [`uaclient/contract.py`](https://raw.githubusercontent.com/canonical/ubuntu-pro-client/main/uaclient/contract.py),
  [`uaclient/cli/attach.py`](https://raw.githubusercontent.com/canonical/ubuntu-pro-client/main/uaclient/cli/attach.py),
  [`uaclient/cli/cli_util.py`](https://raw.githubusercontent.com/canonical/ubuntu-pro-client/main/uaclient/cli/cli_util.py),
  [`uaclient/api/u/pro/attach/token/full_token_attach/v1.py`](https://raw.githubusercontent.com/canonical/ubuntu-pro-client/main/uaclient/api/u/pro/attach/token/full_token_attach/v1.py),
  [`uaclient/api/u/pro/attach/magic/initiate/v1.py`](https://raw.githubusercontent.com/canonical/ubuntu-pro-client/main/uaclient/api/u/pro/attach/magic/initiate/v1.py),
  [`uaclient/api/u/pro/attach/magic/wait/v1.py`](https://raw.githubusercontent.com/canonical/ubuntu-pro-client/main/uaclient/api/u/pro/attach/magic/wait/v1.py), and
  [`uaclient/api/u/pro/attach/magic/revoke/v1.py`](https://raw.githubusercontent.com/canonical/ubuntu-pro-client/main/uaclient/api/u/pro/attach/magic/revoke/v1.py).
* Canonical documentation: [How to attach](https://canonical-ubuntu-pro-client.readthedocs-hosted.com/en/latest/howtoguides/how_to_attach/), [what happens during attach](https://raw.githubusercontent.com/canonical/ubuntu-pro-client/main/dev-docs/explanation/what_happens_during_attach.md), and [magic attach endpoints](https://raw.githubusercontent.com/canonical/ubuntu-pro-client/main/dev-docs/how-to/magic_attach_endpoints.md).
