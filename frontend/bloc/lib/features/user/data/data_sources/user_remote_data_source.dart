import 'dart:convert';
import 'dart:io';

import 'package:todo_minimal/common/constants/api_consts.dart';
import 'package:todo_minimal/common/service/app_exceptions.dart';
import 'package:todo_minimal/common/service/app_http_client.dart';
import 'package:todo_minimal/common/service/app_url_creator.dart';
import 'package:todo_minimal/features/user/domain/entities/user.dart';

abstract class UserRemoteDataSource {
  Future<User> getUser();
  Future<User> getUserMock();
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final AppHttpClient _appHttpClient;
  final AppUrlCreator _appUrlCreator;

  UserRemoteDataSourceImpl(this._appHttpClient, this._appUrlCreator);

  @override
  Future<User> getUser() async {
    try {
      final uri = _appUrlCreator.uri(
        path: '${ApiConsts.userApi}user',
      );

      final response = await _appHttpClient.get(uri);
      final json = jsonDecode(response.body)['data'];

      switch (response.statusCode) {
        case HttpStatus.ok:
          return User.fromJson(json);
        default:
          throw const ServerException();
      }
    } on NetworkException {
      throw const NetworkException();
    } on ServerException {
      rethrow;
    } catch (_) {
      throw const ServerException();
    }
  }

  Future<User> getUserMock() async {
    return User(id: 0, name: 'Hirano', description: 'Software Enginner');
    try {
      final uri = _appUrlCreator.uri(
        path: '${ApiConsts.userApi}user',
      );

      final response = await _appHttpClient.get(uri);
      final json = jsonDecode(response.body)['data'];

      switch (response.statusCode) {
        case HttpStatus.ok:
          return User.fromJson(json);
        default:
          throw const ServerException();
      }
    } on NetworkException {
      throw const NetworkException();
    } on ServerException {
      rethrow;
    } catch (_) {
      throw const ServerException();
    }
  }
}
