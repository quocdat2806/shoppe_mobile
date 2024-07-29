import 'package:equatable/equatable.dart';

class OnboardingState extends Equatable {
  final int counter;

  const OnboardingState({this.counter = 0});

  OnboardingState copyWith({int? counter}) {
    return OnboardingState(
      counter: counter ?? this.counter,
    );
  }

  @override
  List<Object?> get props => [counter];
}
