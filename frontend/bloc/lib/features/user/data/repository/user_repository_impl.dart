import 'package:dartz/dartz.dart';
import 'package:todo_minimal/common/service/app_exceptions.dart';
import 'package:todo_minimal/features/user/data/data_sources/user_remote_data_source.dart';
import 'package:todo_minimal/features/user/domain/entities/user.dart';
import 'package:todo_minimal/features/user/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource _userRemoteDataSource;

  UserRepositoryImpl(this._userRemoteDataSource);

  @override
  Future<Either<AppExceptions, User>> getUser() async {
    try {
      final response = await _userRemoteDataSource.getUserMock();

      // var convertEntity = response.toEntity();

      return Right(response);
    } on NetworkException {
      return const Left(NetworkException());
    } on ServerException {
      return const Left(ServerException());
    } catch (_) {
      return const Left(ServerException());
    }
  }
}
