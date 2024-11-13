# Shared application structure

Each of the applications in this mono-repo should be located in the top level `apps` directory
and follow a shared top level structure:

```
example_app
└── lib
   ├── app
   │  ├── app_model.dart
   │  ├── app_step.dart
   │  └── app_wizard.dart
   ├── app.dart
   ├── example_app.dart
   ├── l10n
   │  ├── example_app_en.arb
   │  └── example_app_localizations_en.dart
   ├── l10n.dart
   ├── main.dart
   ├── pages
   │  ├── a
   │  │  ├── a_model.dart
   │  │  └── a_page.dart
   │  └── b
   │     ├── b_model.dart
   │     ├── b_page.dart
   │     └── b_widgets.dart
   ├── pages.dart
   ├── providers
   │  ├── provider_1.dart
   │  └── provider_2.dart
   ├── providers.dart
   ├── services
   │  ├── service_1.dart
   │  └── service_2.dart
   ├── services.dart
   ├── widgets
   │  ├── widget_1.dart
   │  └── widget_2.dart
   └── widgets.dart
```
## example_app.dart
The entrypoint and top level initialisation logic for the application.

## main.dart
A wrapper around example_app.dart that accepts command line arguments before calling
in to the top level application initialisation.

## app

The `/app` directory contains a fixed set of three files:
- app_model.dart:  the top level model for the application
- app_step.dart:   an enum for the different steps within the application wizard
- app_wizard.dart: the wizard & routing logic for the application

## pages

Each distinct page within the application should have a subdirectory within `/pages`.
Within a given page subdirectory there should be:
- the page itself
- the page specific model
- any page specific widgets (where applicable)

## providers

Riverpod providers should be placed in `/providers` with each file containing
providers grouped by their logical domain.

## services

Implementations of the abstract service classes located in the `ubuntu_provision` package

## widgets

Shared widgets specific to this application. Widgets that are reusable between multiple
applications should be placed in the `ubuntu_provision` package instead.
