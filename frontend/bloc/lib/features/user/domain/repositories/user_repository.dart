import 'package:dartz/dartz.dart';
import 'package:todo_minimal/common/service/app_exceptions.dart';
import 'package:todo_minimal/features/user/domain/entities/user.dart';

abstract class UserRepository {
  Future<Either<AppExceptions, User>> getUser();
}
