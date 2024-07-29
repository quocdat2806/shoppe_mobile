import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/common/color/app_colors.dart';
import 'package:shoppe/core/common/dimens/app_dimens.dart';
import 'package:shoppe/core/common/navigator/app_navigator.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';
import 'package:shoppe/core/database/shapreference.dart';
import 'package:shoppe/core/routers/app_routers.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}
class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    checkOnboardingCompleted(context);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            color: AppColors.primary,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppSVGs.icSplashLogo),
                const SizedBox(height: AppDimens.size8),
                 Text("Hunny Food",style: AppTextStyle.whiteS24W800,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
Future<void> checkOnboardingCompleted (BuildContext context) async{
  bool isOnboardCompleted =
  await SharedPreferencesHelper.isOnboardCompleted();
  if(!context.mounted){
    return;
  }
  if(isOnboardCompleted){
    Future.delayed(const Duration(seconds: 1));
    AppNavigator(context: context).pushReplacementNamed(AppRouter.onBoarding);
    return;
  }
  Future.delayed(const Duration(seconds: 1));
  AppNavigator(context: context).pushReplacementNamed(AppRouter.onBoarding);
}