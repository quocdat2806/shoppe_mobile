import 'package:flutter/cupertino.dart';
import 'package:shoppe/core/network/api_client.dart';
import 'package:shoppe/features/authentication/auth/data/datasource/auth_datasource.dart';
import 'package:shoppe/features/authentication/auth/data/models/user_model.dart';

class AuthDatasourceImpl implements AuthDatasource {
  final ApiClient apiClient;
  AuthDatasourceImpl({required this.apiClient});
  @override
  Future<UserModel> signIn(UserModel user) {
    return apiClient.signIn(user);
  }

  @override
  Future<UserModel> singUp() {
    // TODO: implement singUp
    throw UnimplementedError();
  }

}