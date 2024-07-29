import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shoppe/features/main/presention/state/main_page_state.dart';
class MainPageHooks {
  final ValueNotifier<MainState> mainState;
  MainPageHooks(this.mainState);
  void handleSwitchTab (int index){
    mainState.value = mainState.value.copyWith(
      currentIndexPage: index
    );
  }
}
MainPageHooks useMainPageHooks(){
  final mainState = useState(const MainState());
  return useMemoized(()=>MainPageHooks(mainState));
}
