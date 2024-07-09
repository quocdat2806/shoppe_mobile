import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/common/color/app_colors.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

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
                const SizedBox(height: 8),
                 Text("Hunny Food",style: AppTextStyle.whiteS24W800,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
