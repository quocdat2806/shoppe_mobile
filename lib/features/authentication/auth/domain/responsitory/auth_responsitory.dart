import 'package:shoppe/features/authentication/auth/data/models/user_model.dart';

abstract class AuthResponsitory{
  Future<UserModel>signIn(UserModel user);
  Future<UserModel>signUp();
}