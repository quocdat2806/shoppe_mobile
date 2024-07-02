import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/features/auth/presention/state/auth_page_state.dart';
import 'package:shoppe/features/auth/presention/state/auth_page_state_notifier.dart';

final authPageStateNotifierProvider =
StateNotifierProvider<AuthPageStateNotifier, AuthState>((ref) {
  return AuthPageStateNotifier();
});