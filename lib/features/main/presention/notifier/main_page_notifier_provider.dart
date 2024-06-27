
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/main/presention/state/main_page_state.dart';
import '/features/main/presention/state/main_page_state_notifier.dart';

final mainPageStateNotifierProvider =
StateNotifierProvider<MainPageStateNotifier, MainPageState>((ref) {
  return MainPageStateNotifier();
});