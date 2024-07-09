import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/core/network/api_client.dart';
import 'package:shoppe/core/network/api_utils.dart';
import 'package:shoppe/features/authentication/auth/data/datasource/auth_datasource.dart';
import 'package:shoppe/features/authentication/auth/data/datasource/auth_datasource_impl.dart';
import 'package:shoppe/features/authentication/auth/data/responsitory/auth_responsitory_impl.dart';
import 'package:shoppe/features/authentication/auth/domain/responsitory/auth_responsitory.dart';
import 'package:shoppe/features/authentication/auth/domain/usecase/auth/signin_usecase.dart';
import 'package:shoppe/features/authentication/auth/presention/state/auth_page_state.dart';
import 'package:shoppe/features/authentication/auth/presention/state/auth_page_state_notifier.dart';

final authDataSourceProvide = Provider<AuthDatasource>((ref) {
  return AuthDatasourceImpl(apiClient: ApiUtil.apiClient);
});
final authResponsitoryProvider = Provider<AuthResponsitory>((ref) {
  final dataSource = ref.watch(authDataSourceProvide);
  return AuthResponsitoryImpl(dataSource);
});

final singInUseCaseProvider = Provider<SignInUseCase>((ref) {
  final responsitory = ref.watch(authResponsitoryProvider);
  return SignInUseCase(responsitory: responsitory);
});

final authPageStateNotifierProvider =
    StateNotifierProvider<AuthPageStateNotifier, AuthState>((ref) {
  final sgUseCase = ref.watch(singInUseCaseProvider);
  return AuthPageStateNotifier(signInUseCase: sgUseCase);
});
