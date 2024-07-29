import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:shoppe/core/constants/app_contants.dart';
@immutable
class MainState extends Equatable{
  final  int currentIndexPage;
  const MainState({this.currentIndexPage = AppConstants.step0});
  MainState copyWith({
    int? currentIndexPage,
  }) {
    return MainState(
      currentIndexPage: currentIndexPage ?? this.currentIndexPage,
    );
  }
  @override
  List<Object?> get props => [
    currentIndexPage,
  ];
}