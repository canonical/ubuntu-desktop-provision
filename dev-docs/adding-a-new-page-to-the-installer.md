# Adding a new page to the installer

This project makes use of the [Model-view-viewmodel](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93viewmodel)
architectural pattern.

## Add your page
New pages can either be added to `apps/ubuntu_bootstrap/` for the main installer, `apps/ubuntu_init/`
for the first boot experience, or `packages/ubuntu_provision/` if they need to be shared between
the two flows. This document will assume you are adding a page to the main installer.

- Under `apps/ubuntu_bootstrap/lib/pages`, create a new directory for the page you would like to add
ie: `apps/ubuntu_bootstrap/lib/pages/<your-feature>`.
- Create at minimum the following files (see existing pages for what these files should include):
	- `<your-feature>_page.dart`: Defines the UI for the page you would like to add to the installer.
    This forms the `view` within the MVVM pattern.
	- `<your-feature>_model.dart`: Implements the provider and integrates with backend services to
    support your page's functionality. This forms the `view-model` within the MVVM pattern.
- Export your page for use in the installer by adding it to `apps/ubuntu_bootstrap/lib/pages.dart`
- Add your page to the installation steps by adding it as an enum to `InstallationStep` in 
`apps/ubuntu_bootstrap/lib/app/installation_step.dart`. The order of the `InstallationStep` enums 
determines the order they appear in the installation process.

Not all wizard pages are standalone. For more complicated flows, instead of adding a page, an 
embedded wizard can be added to `InstallationStep`. These embedded wizards house their own wizard
steps, and may share state between multiple pages. See `StorageWizard` in
`apps/ubuntu_bootstrap/lib/pages/storage/storage_wizard.dart`

## Add your service
- Under `apps/ubuntu_bootstrap/lib/services`, create a new file `<your-feature>_service.dart`
- Within this file, define the backend service that supports your page, and will be called to by 
your model. This forms the `model` within the MVVM pattern.
- Export your service for use by your model by adding it to
`apps/ubuntu_bootstrap/lib/services.dart`
- Register your service for use in the installer by adding a statement 
`tryRegisterService<your-service>()` to `apps/ubuntu_bootstrap/lib/app.dart`.

## Add UI text to the l10n file for translation
- Add any text that appear to the user on your page to the
`apps/ubuntu_bootstrap/lib/l10n/ubuntu_bootstrap_en.arb` file.
- In the `ubuntu_bootstrap` project root, run `flutter gen-l10n` to generate getters for use in your
page.
- Import `apps/ubuntu_bootstrap/lib/l10n/ubuntu_bootstrap_localizations.dart` and make use of the 
variables you defined in `ubuntu_bootstrap_en.arb`. This allows for appropriate translated strings 
to be chosen based on the end users selected locale.

## Update tests 
### `installer_wizard_test.dart`
- Under `test/`, add a directory for your new page and create at minimum a `build<your-feature>Model`
helper function that returns a mocked model, making use of the `mokito` annotations for mock generation.
- Run `melos generate` to generate the mocks.
- For each failing test in `test/installer_wizard_test.dart`
	- Initialize your mocked model
	- Add the initialized model to the to the `ProviderScope` overrides.
	- If needed, add statements to correctly navigate and identify your new page in the test flow, 
    using `tapNext()`, `pumpAndSettle()` and `expect()`.

From here, appropriate unit tests for the new page should be added under the newly created 
`test/<your-feature>` directory. 

### Integration tests
The integration tests are based on the absolute order in which pages appear in `InstallationStep` 
in the `apps/ubuntu_bootstrap/lib/app/installation_step.dart` file. Adding a new page will thus 
break all integration tests. 

To fix this, add a new `Future<void> test<your-feature>Page()` function to 
`UbuntuBootstrapPageTester` in the `/packages/ubuntu_provision_test/lib/src/bootstrap_tester.dart`
file. Adding this function in order to each integration test should fix the failing tests.
