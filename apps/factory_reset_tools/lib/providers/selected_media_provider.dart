import 'package:collection/collection.dart';
import 'package:factory_reset_tools/dbus/drive_data.dart';
import 'package:factory_reset_tools/providers/available_media_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedMediaProvider =
    StateNotifierProvider<_SelectedMediaNotifier, DriveData?>(
  (ref) => _SelectedMediaNotifier(ref.watch(availableMediaProvider)),
);

class _SelectedMediaNotifier extends StateNotifier<DriveData?> {
  _SelectedMediaNotifier(this._drives) : super(null) {
    _updateSelectedMedia();
  }

  final AsyncValue<List<DriveData>> _drives;

  void selectDrive(DriveData drive) {
    state = drive;
  }

  void _updateSelectedMedia() {
    _drives.when(
      data: (value) {
        final selectedMedia = state;
        if (selectedMedia != null &&
            value.firstWhereOrNull((drive) => drive.id == selectedMedia.id) ==
                null) {
          state = null;
        }
      },
      error: (error, stackTrace) {},
      loading: () {},
    );
  }
}
