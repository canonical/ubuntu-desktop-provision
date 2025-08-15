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
      
      final lang = TimezoneLocalizations.of(context);
      final model = ref.read(timezoneModelProvider);
      
      // Use PageAnnouncer for consistent semantics handling
      PageAnnouncer.announcePageLoad(
        title: lang.timezonePageTitle,
        instructions: lang.timezonePageInstructions(lang.timezonePageTitle),
      );
      
      // Request focus to ensure Orca is active
      _initialFocusNode.requestFocus();
      
      // Announce current selection if any
      if (model.selectedLocation != null) {
        Future.delayed(const Duration(milliseconds: 600), () {
          if (!mounted) return;
          
          final location = TimezonePage.formatLocation(model.selectedLocation);
          final timezone = TimezonePage.formatTimezone(model.selectedLocation);
          
          SemanticsService.announce(
            lang.timezoneCurrentSelection(location, timezone),
            TextDirection.ltr,
          );
        });
      }
      
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
        label: lang.timezonePageAccessibilityLabel,
        container: true,
        child: WizardPage(
          title: YaruWindowTitleBar(
            title: Semantics(
              label: lang.timezonePageHeaderAccessibility(lang.timezonePageTitle),
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
                  child: Text(
                    lang.timezonePageTitle,
                    style: const TextStyle(fontSize: 0),
                  ),
                ),
              ),
              Padding(
                padding: kWizardPadding,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Semantics(
                        label: lang.timezoneLocationFieldLabel,
                        hint: lang.timezoneLocationFieldHint,
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
                                lang.timezoneSelectedLocation(TimezonePage.formatLocation(location)),
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
                        label: lang.timezoneTimezoneFieldLabel,
                        hint: lang.timezoneTimezoneFieldHint,
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
                                lang.timezoneSelectedTimezone(TimezonePage.formatTimezone(location)),
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
                  label: lang.timezoneMapLabel,
                  hint: lang.timezoneMapHint,
                  child: TimezoneMap(
                    size: TimezoneMapSize.medium,
                    offset: model.selectedLocation?.offset,
                    marker: model.selectedLocation?.coordinates,
                    onPressed: (coordinates) =>
                        model.searchMap(coordinates).then((location) {
                          model.selectLocation(location);
                          if (mounted && location != null) {
                            SemanticsService.announce(
                              lang.timezoneSelectedFromMap(TimezonePage.formatLocation(location)),
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
              label: lang.backButtonLabel,
              child: const BackWizardButton(),
            ),
            trailing: [
              Semantics(
                button: true,
                label: model.selectedLocation?.timezone != null
                    ? lang.nextButtonLabel
                    : lang.nextButtonDisabledLabel,
                enabled: model.selectedLocation?.timezone != null,
                child: NextWizardButton(
                  onNext: () async {
                    if (mounted) {
                      final location = TimezonePage.formatLocation(model.selectedLocation);
                      final timezone = TimezonePage.formatTimezone(model.selectedLocation);
                      SemanticsService.announce(
                        lang.timezoneSaving(location, timezone),
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