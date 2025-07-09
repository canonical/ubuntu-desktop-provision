(contribute)=

# Contributing to Ubuntu Desktop Provision

A big welcome and thank you for considering contributing to Ubuntu Desktop Provision and Ubuntu! It’s people like you that make it a reality for users in our community.

Reading and following these guidelines will help us make the contribution process easy and effective for everyone involved. It also communicates that you agree to respect the time of the developers managing and developing this project. In return, we will reciprocate that respect by addressing your issue, assessing changes, and helping you finalise your pull requests.

These are mostly guidelines, not rules. Use your best judgement, and feel free to propose changes to this document in a pull request.

## Quicklinks

- [Contributing to Ubuntu Desktop Provision](#contributing-to-ubuntu-desktop-provision)
  - [Quicklinks](#quicklinks)
  - [Code of Conduct](#code-of-conduct)
  - [Getting Started](#getting-started)
    - [Pull Requests](#pull-requests)
  - [Bugs](#bugs)
  - [Translations](#translations)
  - [Contributing to the code](#contributing-to-the-code)
    - [Required dependencies](#required-dependencies)
    - [Building and running the binaries](#building-and-running-the-binaries)
    - [Code Generation](#code-generation)
    - [About the testsuite](#about-the-testsuite)
  - [Contributor License Agreement](#contributor-license-agreement)
  - [Getting Help](#getting-help)

## Code of Conduct

We take our community seriously and hold ourselves and other contributors to high standards of communication. By participating and contributing to this project, you agree to uphold our [Code of Conduct](https://ubuntu.com/community/code-of-conduct).

## Getting Started

### Pull Requests

PRs to our project are always welcome and can be a quick way to get your fix or improvement slated for the next release. In general, PRs should:

* Only fix/add the functionality in question **OR** address wide-spread empty space/style issues, not both.
* Add unit or integration tests for fixed or changed functionality.
* Address a single concern in the least number of changed lines as possible.

For changes that address core functionality or would require breaking changes (e.g. a major release), it's best to open an Issue to discuss your proposal first. This is not required but can save time creating and reviewing changes.

In general, we follow the ["fork-and-pull" Git workflow](https://github.com/susam/gitpr)

1. Fork the repository to your own GitHub account
1. Clone the project to your machine
1. Create a branch locally with a succinct but descriptive name
1. Commit changes to the branch
1. Following any formatting and testing guidelines specific to this repo
1. Push changes to your fork
1. Open a PR in our repository and follow the PR template so that we can efficiently review the changes.

PRs will trigger unit and integration tests with and without race detection, linting and formatting validations, static and security checks, freshness of generated files verification. All the tests must pass before merging in main branch.

## Bugs

Please report any bugs related to Ubuntu Desktop Provision on [Launchpad](https://bugs.launchpad.net/ubuntu-desktop-provision).
We use the GitHub issue tracker only for issues related to the development of Ubuntu Desktop Provision itself.

## Translations

Translations are managed using [Weblate](https://hosted.weblate.org/projects/ubuntu-desktop-translations/)

### Importing new translations from the `main` branch

With the help of `scripts/update-translations` it is possible to import updated translations from a different branch. It follows this logic:
For each `.arb` file in the target directory (typically the git worktree of this branch), iterate through all the translation strings. For each string
* Compare the English originals in the target directory and the source directory (the git worktree of the branch from which we want to import new translations)
* If the English originals are the same, update the translation in the target directory with that from the source directory
* Otherwise keep the old translation

Starting in a worktree of the current branch (`ubuntu/24.04`), translations from `main` can be imported by running:
```sh
git worktree add ../ubuntu-desktop-provision-main main
./scripts/update-translations -t . -s ../ubuntu-desktop-provision-main
```
Since the script is mostly agnostic to the directory structure and simply uses globs to find the `.arb` files, it's important to not use nested worktrees.

## Contributing to the code

### Required dependencies

[Install Flutter](https://flutter.dev/docs/get-started/install/linux) - the currently used version is specified in `.tool-versions`. If you're using [asdf](https://asdf-vm.com/) to manage your Flutter SDK, you can simply run `asdf install` to install the required version.

Fetch [Subiquity](https://github.com/canonical/subiquity), which is included as a git sub-module, by running
```
git submodule update --init --recursive
```
and install its dependencies via
```
make install_deps
```

A [Melos](https://docs.page/invertase/melos) configuration is provided to make it straightforward to execute common tasks across all Dart/Flutter packages included in this project.

Install Melos:
```
dart pub global activate melos
```

Bootstrap the workspace:
```
melos bootstrap
```

### Building and running the binaries

Both `ubuntu-desktop-bootstrap` and `ubuntu-desktop-init` are built as snaps using `source: .` for their flutter-based UI. This works well in a pristine pipeline because there are no artefacts, but when running locally, host artefacts may taint the snapcraft builder. Let's walk through how to build locally and address these artefact:

```bash
git clone git@github.com:canonical/ubuntu-desktop-provision.git
cd ubuntu-desktop-provision
./ci/snap-build-setup.sh <bootstrap|init>
snapcraft
```

If you then make local edits, subsequent runs of `snapcraft` may fail. Individual situations may differ, but generally you can clear host artefacts and rebuild with:

```bash
flutter clean
snapcraft clean
rm -rf packages/subiquity_client/subiquity/.subiquity
rm -rf snap
./ci/snap-build-setup.sh <bootstrap|init>
snapcraft
```

Finally, install the local build with `sudo snap install <snap-artefact-name> --devmode`.

### Code Generation

The Dart/Flutter packages in this project use [freezed](https://pub.dev/packages/freezed) and
[json_serializable](https://pub.dev/packages/json_serializable) to generate
immutable data classes with JSON serialisation support.
Adding new types or members to classes annotated with `@freezed` or `@JsonSerializable` requires
the code to be re-generated.

Furthermore, [mockito](https://pub.dev/packages/mockito) is used to generate mock classes for unit tests.
If you modify the public API of existing classes that are mocked in tests or if you add new classes, you'll need to re-generate the mocks.

You can run the code generator from the working directory of a specific package with
```
dart run build_runner build --delete-conflicting-outputs
```

In order to re-generate the generated Dart code across all Dart/Flutter packages run:
```
melos generate
```

### About the testsuite

The project includes a comprehensive testsuite made of unit and integration tests. All the tests must pass before the review is considered. If you have troubles with the testsuite, feel free to mention it on your PR description.

You can run the unit tests for all Dart/Flutter packages in this project via
```
melos test
```

The test suite must pass before merging the PR to our main branch. Any new feature, change or fix must be covered by corresponding tests.

## Contributor License Agreement

It is required to sign the [Contributor License Agreement](https://ubuntu.com/legal/contributors) in order to contribute to this project.

An automated test is executed on PRs to check if it has been accepted.

This project is covered by [THIS LICENSE](LICENSE).

## Getting Help

Join us in the [Ubuntu Community](https://discourse.ubuntu.com/c/desktop/8) and post your question there with a descriptive tag.
