import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/core/enums/load_status.dart';
import 'package:shoppe/core/enums/login.dart';
import 'package:shoppe/features/authentication/auth/presention/state/auth_page_state.dart';

  class AuthPageStateNotifier extends StateNotifier<AuthState> {
  // MainPageStateNotifier():super(const MainState(currentIndexPage: 0));
  AuthPageStateNotifier():super( const AuthState(
    login: Login.sms,
    loadStatus: LoadStatus.initial
  ));
  void switchMethodLogin(Login login) {
    state = state.copyWith(
      login: login,
    );
  }
}
