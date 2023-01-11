import 'package:collection/collection.dart';
import 'package:subiquity_client/subiquity_client.dart';

import 'refresh_model.dart';

extension RefreshStateX on RefreshState {
  double? get progress => maybeWhen(
      progress: (change) => change.progress,
      checking: () => null,
      orElse: () => 0);
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
