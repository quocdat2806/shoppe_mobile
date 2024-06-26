import 'package:flutter/material.dart';
import 'package:shoppe/core/common/color/app_colors.dart';

class AppDivider extends Divider {
  const AppDivider({
    super.key,
    double super.indent = 0,
    double super.endIndent = 0,
  }) : super(
          color: AppColors.divider,
          height: 1,
        );
}
