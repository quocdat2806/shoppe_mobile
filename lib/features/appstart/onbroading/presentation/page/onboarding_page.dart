import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/common/color/app_colors.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';
import 'package:shoppe/core/common/widgets/buttons/app_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

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
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppSVGs.icOnboarding1),
                const SizedBox(height: 8),
                Text(
                  "Search Restaurants",
                  style: AppTextStyle.primaryS20Bold,
                ),
                const SizedBox(height: 8),
                const Text(
                  "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or ",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.grey6,
                ),
                const SizedBox(height: 24),
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: AppButton(
                    title: "Next",
                    cornerRadius: 24,
                    textStyle: AppTextStyle.whiteS16Bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
