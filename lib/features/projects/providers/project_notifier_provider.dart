import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskorderrate/core/shared/class_shared_import.dart';
import 'package:taskorderrate/features/projects/providers/project_notifier.dart';

import '../../../core/di/locator_providers.dart';
import 'project_state.dart';

final StateNotifierProvider<ProjectNotifier, ProjectState> projectNotifier =
    StateNotifierProvider<ProjectNotifier, ProjectState>((ref) {
      final repository = ref.read(projectRepoDi);
      return ProjectNotifier(repository);
    });
