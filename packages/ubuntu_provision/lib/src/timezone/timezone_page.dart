import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:timezone_map/timezone_map.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_provision/src/timezone/timezone_l10n.dart';
import 'package:ubuntu_provision/src/timezone/timezone_model.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

/// https://github.com/canonical/ubuntu-desktop-installer/issues/38
class TimezonePage extends ConsumerStatefulWidget with ProvisioningPage {
  const TimezonePage({super.key});

  @override
  ConsumerState<TimezonePage> createState() => _TimezonePageState();

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return Future.wait([
      TimezoneMap.precacheAssets(context),
      ref.read(timezoneModelProvider).init(),
    ]).then((_) => true);
  }

  static String formatLocation(GeoLocation? location) {
    return location?.toDisplayString() ?? '';
  }

  static String formatTimezone(GeoLocation? location) {
    return location?.toTimezoneString() ?? '';
  }
}

class _TimezonePageState extends ConsumerState<TimezonePage> {
  // Focus node for initial focus
  final FocusNode _initialFocusNode = FocusNode();
  
  // Focus nodes for form fields
  final FocusNode _locationFocusNode = FocusNode();
  final FocusNode _timezoneFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    
    // Announce the page when it loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      
      // Ensure semantics are enabled
      WidgetsBinding.instance.ensureSemantics();
      
      final lang = TimezoneLocalizations.of(context);
      final model = ref.read(timezoneModelProvider);
      
      // Request focus to ensure Orca is active
      _initialFocusNode.requestFocus();
      
      // Main announcement with delay to ensure Orca catches it
      Future.delayed(const Duration(milliseconds: 100), () {
        if (!mounted) return;
        
        SemanticsService.announce(
          'Select your timezone. ${lang.timezonePageTitle}. You can search for a city or timezone, or click on the map.',
          TextDirection.ltr,
          assertiveness: Assertiveness.assertive,
        );
        
        // Announce current selection if any
        if (model.selectedLocation != null) {
          Future.delayed(const Duration(milliseconds: 600), () {
            if (!mounted) return;
            
            final location = TimezonePage.formatLocation(model.selectedLocation);
            final timezone = TimezonePage.formatTimezone(model.selectedLocation);
            
            SemanticsService.announce(
              'Currently selected: $location, $timezone',
              TextDirection.ltr,
            );
          });
        }
      });
      
      // Set focus on location field after announcement
      Future.delayed(const Duration(milliseconds: 800), () {
        if (mounted) {
          _locationFocusNode.requestFocus();
        }
      });
    });
  }

  @override
  void dispose() {
    _initialFocusNode.dispose();
    _locationFocusNode.dispose();
    _timezoneFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lang = TimezoneLocalizations.of(context);
    final model = ref.watch(timezoneModelProvider);

    return Focus(
      focusNode: _initialFocusNode,
      child: Semantics(
        label: 'Select your timezone page',
        container: true,
        child: WizardPage(
          title: YaruWindowTitleBar(
            title: Semantics(
              label: 'Select your timezone. ${lang.timezonePageTitle}',
              header: true,
              child: Text(lang.timezonePageTitle),
            ),
          ),
          contentPadding: EdgeInsets.zero,
          content: Column(
            children: <Widget>[
              // Hidden live region for announcements
              Semantics(
                liveRegion: true,
                hidden: true,
                child: Container(
                  height: 0,
                  child: const Text(
                    'Select your timezone',
                    style: TextStyle(fontSize: 0),
                  ),
                ),
              ),
              Padding(
                padding: kWizardPadding,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Semantics(
                        label: 'Location search field',
                        hint: 'Type to search for a city',
                        textField: true,
                        child: YaruAutocomplete<GeoLocation>(
                          initialValue: TextEditingValue(
                            text: TimezonePage.formatLocation(model.selectedLocation),
                          ),
                          fieldViewBuilder:
                              (context, editor, focusNode, onSubmitted) {
                            if (!focusNode.hasFocus) {
                              editor.text = TimezonePage.formatLocation(model.selectedLocation);
                            }
                            return Focus(
                              focusNode: _locationFocusNode,
                              child: TextFormField(
                                focusNode: focusNode,
                                controller: editor,
                                decoration: InputDecoration(
                                  labelText: lang.timezoneLocationLabel,
                                ),
                                onFieldSubmitted: (value) => onSubmitted(),
                              ),
                            );
                          },
                          displayStringForOption: TimezonePage.formatLocation,
                          optionsBuilder: (value) {
                            return model.searchLocation(value.text);
                          },
                          onSelected: (location) {
                            model.selectLocation(location);
                            if (mounted) {
                              SemanticsService.announce(
                                'Selected location: ${TimezonePage.formatLocation(location)}',
                                TextDirection.ltr,
                              );
                            }
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: kWizardSpacing),
                    Expanded(
                      child: Semantics(
                        label: 'Timezone search field',
                        hint: 'Type to search for a timezone',
                        textField: true,
                        child: YaruAutocomplete<GeoLocation>(
                          initialValue: TextEditingValue(
                            text: TimezonePage.formatTimezone(model.selectedLocation),
                          ),
                          fieldViewBuilder:
                              (context, editor, focusNode, onFieldSubmitted) {
                            if (!focusNode.hasFocus) {
                              editor.text = TimezonePage.formatTimezone(model.selectedLocation);
                            }
                            return Focus(
                              focusNode: _timezoneFocusNode,
                              child: TextFormField(
                                focusNode: focusNode,
                                controller: editor,
                                decoration: InputDecoration(
                                  labelText: lang.timezoneTimezoneLabel,
                                ),
                                onFieldSubmitted: (value) => onFieldSubmitted(),
                              ),
                            );
                          },
                          displayStringForOption: TimezonePage.formatTimezone,
                          optionsBuilder: (value) {
                            return model.searchTimezone(value.text);
                          },
                          onSelected: (location) {
                            model.selectTimezone(location);
                            if (mounted) {
                              SemanticsService.announce(
                                'Selected timezone: ${TimezonePage.formatTimezone(location)}',
                                TextDirection.ltr,
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kWizardSpacing),
              Expanded(
                child: Semantics(
                  label: 'Timezone map. Click on the map to select your location',
                  hint: 'Interactive world map for timezone selection',
                  child: TimezoneMap(
                    size: TimezoneMapSize.medium,
                    offset: model.selectedLocation?.offset,
                    marker: model.selectedLocation?.coordinates,
                    onPressed: (coordinates) =>
                        model.searchMap(coordinates).then((location) {
                          model.selectLocation(location);
                          if (mounted && location != null) {
                            SemanticsService.announce(
                              'Selected ${TimezonePage.formatLocation(location)} from map',
                              TextDirection.ltr,
                            );
                          }
                        }),
                  ),
                ),
              ),
            ],
          ),
          bottomBar: WizardBar(
            leading: Semantics(
              button: true,
              label: 'Back button',
              child: const BackWizardButton(),
            ),
            trailing: [
              Semantics(
                button: true,
                label: model.selectedLocation?.timezone != null
                    ? 'Next button'
                    : 'Next button, disabled. Please select a timezone',
                enabled: model.selectedLocation?.timezone != null,
                child: NextWizardButton(
                  onNext: () async {
                    if (mounted) {
                      final location = TimezonePage.formatLocation(model.selectedLocation);
                      final timezone = TimezonePage.formatTimezone(model.selectedLocation);
                      SemanticsService.announce(
                        'Saving timezone: $location, $timezone',
                        TextDirection.ltr,
                      );
                    }
                    await ref.read(timezoneModelProvider).save();
                  },
                  enabled: model.selectedLocation?.timezone != null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension on TimezoneController {
  // Searches for the nearest location on the map but returns a simplified
  // location entry with the administration area and country details removed,
  // and the location name set to the name of the largest city in the timezone
  // to match the behavior of Ubiquity.
  //
  // This ensures that clicking around the timezone map keeps the pin as close
  // as possible to the clicked location (the timezone's largest city could be
  // far away), yet the presented textual result is not too granular i.e. not
  // some small unknown village but the timezone's largest city.
  Future<GeoLocation?> searchMap(LatLng coordinates) async {
    final location = await searchCoordinates(coordinates)
        .then((values) => values.firstOrNull);
    final timezone = await searchTimezone(location?.timezone ?? '')
        .then((values) => values.firstOrNull);
    return location?.copyWith(
      name: timezone?.name ?? location.name,
      admin: '',
      country: '',
    );
  }
}