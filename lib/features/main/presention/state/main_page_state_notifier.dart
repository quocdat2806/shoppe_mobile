import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/features/main/presention/state/main_page_state.dart';

class MainPageStateNotifier extends StateNotifier<MainState> {
  MainPageStateNotifier():super(const MainState(currentIndexPage: 0));
  void handleSwitchTab({int currentIndexTab = 0}){
    state = state.copyWith(currentIndexPage: currentIndexTab);
  }
}