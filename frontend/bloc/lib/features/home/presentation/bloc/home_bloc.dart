import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:todo_minimal/features/home/presentation/bloc/home_event.dart';
import 'package:todo_minimal/features/home/presentation/bloc/home_state.dart';
import 'package:todo_minimal/features/task/domain/use_cases/get_tasks_use_case.dart';
import 'package:todo_minimal/features/user/domain/entities/user.dart';
import 'package:todo_minimal/features/user/domain/use_cases/get_user_use_case.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetTasksUseCase _getTasksUseCase;
  final GetUserUseCase _getUserUseCase;

  HomeBloc(
    this._getTasksUseCase,
    this._getUserUseCase,
  ) : super(
          HomeState(
            status: HomeStatusState.idle,
            user: UserEmpty(),
            tasks: [],
          ),
        ) {
    on<GetTasks>((event, emit) => _onGetTasks(event, emit));
  }

  void _onGetTasks(GetTasks event, Emitter emit) async {
    emit(state.copyWith(status: HomeStatusState.loading));

    // final result = await _getTasksUseCase.call();

    // result.fold(
    //   (error) {
    //     // emit(state.copyWith(status: HomeStatusState.error, exception: error));
    //   },
    //   (tasks) {
    //     emit(state.copyWith(status: HomeStatusState.success, tasks: tasks));
    //   },
    // );
  }
}
