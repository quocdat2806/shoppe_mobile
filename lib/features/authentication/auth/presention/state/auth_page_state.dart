import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:shoppe/core/enums/load_status.dart';
import 'package:shoppe/core/enums/login.dart';

@immutable
class AuthState extends Equatable {
  final Login login;
  final LoadStatus loadStatus;

  const AuthState({
    this.login = Login.sms,
    this.loadStatus = LoadStatus.initial,
  });

  AuthState copyWith({Login? login, LoadStatus? loadStatus}) {
    return AuthState(
      login: login ?? this.login,
      loadStatus: loadStatus ?? this.loadStatus,
    );
  }

  @override
  List<Object?> get props => [login, loadStatus];
}
