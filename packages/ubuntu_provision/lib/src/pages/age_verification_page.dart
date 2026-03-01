import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

class AgeVerificationPage extends ConsumerStatefulWidget {
  const AgeVerificationPage({super.key});

  static bool shouldShow(String? countryCode) {
    return countryCode == 'US';
  }

  @override
  ConsumerState<AgeVerificationPage> createState() => _AgeVerificationPageState();
}

class _AgeVerificationPageState extends ConsumerState<AgeVerificationPage> {
  int? _birthYear;

  @override
  Widget build(BuildContext context) {
    final currentYear = DateTime.now().year;
    
    return WizardPage(
      title: const Text('Age Verification'),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'To comply with child safety regulations, please indicate the birth year of the primary user of this device.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 24),
          DropdownButtonFormField<int>(
            decoration: const InputDecoration(
              labelText: 'Birth Year',
              border: OutlineInputBorder(),
            ),
            value: _birthYear,
            items: List.generate(100, (i) => currentYear - i)
                .map((year) => DropdownMenuItem(
                      value: year,
                      child: Text(year.toString()),
                    ))
                .toList(),
            onChanged: (value) => setState(() => _birthYear = value),
          ),
          const SizedBox(height: 16),
          const Text(
            'This information is used only to provide age-appropriate content signals to applications and is not shared with third parties.',
            style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
          ),
        ],
      ),
      actions: [
        WizardAction(
          label: 'Continue',
          enabled: _birthYear != null,
          onActivated: () async {
            if (_birthYear != null) {
              // TODO: Call provd service to store age
              Navigator.of(context).pop();
            }
          },
        ),
      ],
    );
  }
}
