import 'package:flutter/material.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';
import 'package:shoppe/core/common/widgets/buttons/app_button.dart';

class OnboardingFooter extends StatelessWidget {
  const OnboardingFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AppButton(
        title: "Next",
        cornerRadius: 24,
        textStyle: AppTextStyle.whiteS16Bold,
      ),
    );
  }
}
