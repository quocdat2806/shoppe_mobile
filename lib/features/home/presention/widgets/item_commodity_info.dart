import 'package:flutter/material.dart';
import 'package:shoppe/core/common/color/app_colors.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ItemCommodityInfo extends StatelessWidget {
  const ItemCommodityInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(
          "Vegetarian Noodles",
          style: AppTextStyle.blackS16W700,
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Text(
              "1.5km",
              style: AppTextStyle.grey2,
            ),
            const SizedBox(width: 8),
            Container(
              width: 2,
              height: 14,
              color: AppColors.grey2,
            ),
            const SizedBox(width: 8),
            SvgPicture.asset(
              AppSVGs.icStar,
              width: 16,
              height: 16,
            ),
            const SizedBox(width: 8),
            const Text("4.8", style: AppTextStyle.grey2),
            const SizedBox(width: 8),
            const Text("(1.2K)", style: AppTextStyle.grey2),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              "6.00",
              style: AppTextStyle.greenS16Bold,
            ),
            const SizedBox(width: 8),
            Container(
              width: 2,
              height: 10,
              color: AppColors.grey2,
            ),
            const SizedBox(width: 8),
            SvgPicture.asset(
              AppSVGs.icMotorbike,
              width: 16,
              height: 16,
            ),
            const SizedBox(width: 8),
            const Text("2.00", style: AppTextStyle.grey2),
            const SizedBox(width: 16),
            SvgPicture.asset(
              AppSVGs.icHeart,
              width: 16,
              height: 16,
            ),
          ],
        ),
      ],
    );
  }
}
