import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';
import 'package:shoppe/core/enums/onboarding.dart';

class OnboardingSubpage extends StatelessWidget {
  final int currentIndexPage;
  const OnboardingSubpage({super.key, required this.currentIndexPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(AppSVGs.icOnboarding1),
          const SizedBox(height: 8),
          Text(
           OnboardingExt.getTitle(currentIndexPage: currentIndexPage),
            style: AppTextStyle.primaryS20Bold,
          ),
          const SizedBox(height: 8),
           Text(
            OnboardingExt.getDescription(currentIndexPage: currentIndexPage),
            textAlign: TextAlign.center,
            style: AppTextStyle.grey6,
          ),
        ],
      ),
    );
  }
}
