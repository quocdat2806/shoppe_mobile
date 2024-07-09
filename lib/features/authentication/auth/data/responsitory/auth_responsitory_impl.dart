import 'package:flutter/cupertino.dart';
import 'package:shoppe/features/authentication/auth/data/datasource/auth_datasource.dart';
import 'package:shoppe/features/authentication/auth/data/models/user_model.dart';
import 'package:shoppe/features/authentication/auth/domain/responsitory/auth_responsitory.dart';

class AuthResponsitoryImpl extends AuthResponsitory{
  final AuthDatasource dataSource;
  AuthResponsitoryImpl(this.dataSource);

  @override
  Future<UserModel> signIn(UserModel user) {
  return  dataSource.signIn(user);
  }

  @override
  Future<UserModel> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }

}