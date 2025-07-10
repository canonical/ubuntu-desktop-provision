import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/manual/manual_storage_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/manual/manual_storage_widgets.dart';
import 'package:ubuntu_bootstrap/pages/storage/manual/storage_selector.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class ManualStoragePage extends ConsumerStatefulWidget {
  const ManualStoragePage({super.key});

  static Future<bool> load(WidgetRef ref) {
    return ref
        .read(manualStorageModelProvider.notifier)
        .init()
        .then((_) => true);
  }

  @override
  ConsumerState<ManualStoragePage> createState() => _ManualStoragePageState();
}

class _ManualStoragePageState extends ConsumerState<ManualStoragePage> {
  final _scrollController = AutoScrollController();
  late void Function() _scrollListener;
  late final ManualStorageModel _model;
  
  // Focus node for initial focus
  final FocusNode _initialFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _scrollListener = _scrollToSelection;
    _model = ref.read(manualStorageModelProvider);
    _model.selectionChangedNotifier.addListener(_scrollListener);
    
    // Announce the page when it loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      
      // Ensure semantics are enabled
      WidgetsBinding.instance.ensureSemantics();
      
      final lang = UbuntuBootstrapLocalizations.of(context);
      
      // Request focus to ensure Orca is active
      _initialFocusNode.requestFocus();
      
      // Announce with delay to ensure Orca catches it
      Future.delayed(const Duration(milliseconds: 100), () {
        if (!mounted) return;
        
        SemanticsService.announce(
          'Manual Partitioning. ${lang.allocateDiskSpace}. Configure your disk partitions manually.',
          TextDirection.ltr,
          assertiveness: Assertiveness.assertive,
        );
      });
      
      // Additional information after a brief pause
      Future.delayed(const Duration(milliseconds: 800), () {
        if (!mounted) return;
        
        final diskCount = _model.disks.length;
        SemanticsService.announce(
          'Found $diskCount ${diskCount == 1 ? "disk" : "disks"} available for partitioning',
          TextDirection.ltr,
        );
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _model.selectionChangedNotifier.removeListener(_scrollListener);
    _initialFocusNode.dispose();
    super.dispose();
  }

  void _scrollToSelection() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final model = ref.read(manualStorageModelProvider);
      if (model.selectedDiskIndex != -1) {
        _scrollController.scrollToIndex(
          Object.hashAll([model.selectedDiskIndex, model.selectedObjectIndex]),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final model = ref.watch(manualStorageModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);

    return WizardPage(
      title: YaruWindowTitleBar(
        title: Focus(
          focusNode: _initialFocusNode,
          child: Semantics(
            label: 'Manual Partitioning. ${lang.allocateDiskSpace}',
            header: true,
            focused: _initialFocusNode.hasFocus,
            child: Text(lang.allocateDiskSpace),
          ),
        ),
      ),
      content: Semantics(
        container: true,
        label: 'Manual partitioning configuration',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Hidden live region for announcements
            Semantics(
              liveRegion: true,
              hidden: true,
              child: Container(
                height: 0,
                child: Text(
                  'Manual Partitioning',
                  style: TextStyle(fontSize: 0),
                ),
              ),
            ),
            Semantics(
              label: 'Storage partition overview. Visual representation of disk partitions',
              child: const PartitionBar(),
            ),
            const SizedBox(height: kWizardSpacing / 4),
            Semantics(
              label: 'Partition legend showing different partition types',
              child: const PartitionLegend(),
            ),
            const SizedBox(height: kWizardSpacing),
            Expanded(
              child: Semantics(
                label: 'Partition table. Use arrow keys to navigate',
                container: true,
                child: PartitionTable(controller: _scrollController),
              ),
            ),
            const SizedBox(height: kWizardSpacing / 2),
            Semantics(
              label: 'Partition action buttons',
              container: true,
              child: const PartitionButtonRow(),
            ),
            const SizedBox(height: kWizardSpacing / 2),
            FractionallySizedBox(
              widthFactor: 0.5,
              alignment: Alignment.topLeft,
              child: Semantics(
                label: 'Boot loader device selection',
                hint: 'Select where to install the boot loader',
                child: StorageSelector(
                  title: lang.bootLoaderDevice,
                  storages: model.disks,
                  selected: model.bootDiskIndex,
                  enabled: (disk) => disk.canBeBootDevice,
                  onSelected: (storage) {
                    model.selectBootDisk(storage!);
                    if (mounted) {
                      SemanticsService.announce(
                        'Boot loader will be installed ',
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
      bottomBar: WizardBar(
        leading: Semantics(
          button: true,
          label: 'Back button',
          child: const BackWizardButton(),
        ),
        trailing: [
          Semantics(
            button: true,
            label: model.isValid 
                ? 'Next button' 
                : 'Next button, disabled. Configure at least one partition',
            enabled: model.isValid,
            child: NextWizardButton(
              enabled: model.isValid,
              onNext: () async {
                if (mounted) {
                  SemanticsService.announce(
                    'Applying partition configuration',
                    TextDirection.ltr,
                  );
                }
                await model.setStorage();
              },
              onReturn: model.resetStorage,
            ),
          ),
        ],
      ),
    );
  }
}