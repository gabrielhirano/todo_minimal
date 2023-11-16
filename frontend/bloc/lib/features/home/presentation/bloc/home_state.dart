import 'package:todo_minimal/features/task/domain/entities/task.dart';
import 'package:todo_minimal/features/user/domain/entities/user.dart';

enum HomeStatusState { idle, loading, success }

class HomeState {
  final HomeStatusState status;
  final User user;
  final List<Task> tasks;

  HomeState({
    required this.status,
    required this.user,
    required this.tasks,
  });

  HomeState copyWith({
    HomeStatusState? status,
    User? user,
    List<Task>? tasks,
  }) =>
      HomeState(
        status: status ?? this.status,
        user: user ?? this.user,
        tasks: tasks ?? this.tasks,
      );
}
