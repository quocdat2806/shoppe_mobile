import 'package:flutter/material.dart';
import 'package:shoppe/core/common/dimens/app_dimens.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';
import 'package:shoppe/core/common/widgets/buttons/app_button.dart';
import 'package:shoppe/core/enums/onboarding.dart';
import 'package:shoppe/features/appstart/onbroading/presentation/hooks/onboarding_hooks.dart';
import 'package:shoppe/features/appstart/onbroading/presentation/widgets/onboarding_subpage.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OnboardingPage extends HookWidget {
  const OnboardingPage({super.key});

  static const router = 'onBoarding';

  @override
  Widget build(BuildContext context) {
    final pageViewController = usePageController(initialPage: 0);
    final hooks = useOnboardingHooks(pageViewController,context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageViewController,
              itemCount: Onboarding.values.length,
              onPageChanged:hooks.jumpToPage,
              itemBuilder: (BuildContext context, int index) {
                return OnboardingSubpage(
                  currentIndexPage: index,
                );
              },
            ),
          ),
          AppButton(
            containerPadding: AppDimens.size8,
            onPressed: hooks.goToNextPage,
            title: OnboardingExt.getTextButton(currentIndexPage:hooks.homeState.value.counter ),
            cornerRadius: AppDimens.size24,
            textStyle: AppTextStyle.whiteS16Bold,
          ),
          const SizedBox(height: AppDimens.size32),
        ],
      ),
    );
  }
}


