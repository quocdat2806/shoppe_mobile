import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shoppe/core/common/navigator/app_navigator.dart';
import 'package:shoppe/core/constants/app_contants.dart';
import 'package:shoppe/core/database/shapreference.dart';
import 'package:shoppe/core/routers/app_routers.dart';
import 'package:shoppe/features/appstart/onbroading/presentation/state/onboarding_state.dart';
class OnboardingHooks {
  final ValueNotifier<OnboardingState> homeState;
  final PageController pageViewController;
  final BuildContext context;
  OnboardingHooks(this.homeState,this.pageViewController,this.context);
  void add() {
    homeState.value = homeState.value.copyWith(counter: homeState.value.counter + 1);
  }
  void goToMainPage() {
  AppNavigator(context: context).pushReplacementNamed(AppRouter.main);
  }
  void jumpToPage(int index) {
    homeState.value = homeState.value.copyWith(counter:index);
  }
  void goToNextPage() async{
    const int jumpStep = 1;
    if( homeState.value.counter == AppConstants.lastStep){
      await SharedPreferencesHelper.setOnboard(onBoard: true);
      goToMainPage();
      return;
    }
    homeState.value = homeState.value.copyWith(counter: homeState.value.counter +jumpStep);
    pageViewController.animateToPage(
      homeState.value.counter ,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
OnboardingHooks useOnboardingHooks(PageController pageController,BuildContext context) {
  final homeState = useState(const OnboardingState());
  return useMemoized(() => OnboardingHooks(homeState,pageController,context));
}