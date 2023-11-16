import 'package:dartz/dartz.dart';
import 'package:todo_minimal/common/service/app_exceptions.dart';
import 'package:todo_minimal/features/user/domain/entities/user.dart';
import 'package:todo_minimal/features/user/domain/repositories/user_repository.dart';

class GetUserUseCase {
  final UserRepository _repository;

  GetUserUseCase(this._repository);

  Future<Either<AppExceptions, User>> call() => _repository.getUser();
}
