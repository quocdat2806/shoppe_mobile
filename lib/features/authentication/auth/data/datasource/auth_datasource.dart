 import 'package:shoppe/features/authentication/auth/data/models/user_model.dart';

abstract class AuthDatasource{
 Future<UserModel> signIn(UserModel user);
 Future<UserModel> singUp();
}