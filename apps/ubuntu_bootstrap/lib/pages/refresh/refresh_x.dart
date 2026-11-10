import 'package:collection/collection.dart';
import 'package:subiquity_client/subiquity_client.dart';

import 'package:ubuntu_bootstrap/services.dart';

extension RefreshStateX on RefreshState {
  void foo() {}
  double? get progress => switch (this) {
        RefreshStateProgress(:final change) => change.progress,
        RefreshStateChecking() => null,
        _ => 0,
      };
}

extension ChangeX on Change {
  Task? get doing =>
      tasks.firstWhereOrNull((t) => t.status == TaskStatus.DOING);

  double? get progress {
    final task = doing;
    return task != null && task.progress.total > 1
        ? task.progress.done / task.progress.total
        : null;
  }
}
