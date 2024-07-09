import 'package:flutter/material.dart';
import 'package:shoppe/core/common/color/app_colors.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  final String urlImageAvatar =
      "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses"
      "_23-2149436188.jpg?size=338&ext=jpg&ga=GA1.1.2113030492.1719964800&semt=sph";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            image: DecorationImage(
              image: NetworkImage(urlImageAvatar),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                "Delivery to ",
                style: AppTextStyle.greyS14,
              ),
              Text(
                "Times Square",
                style: AppTextStyle.blackS14W700,
              ),
            ],
          ),
        ),
        _buildHeaderActionWidgets(urlIcon: AppSVGs.icNotification),
        const SizedBox(width: 16),
        _buildHeaderActionWidgets(urlIcon: AppSVGs.icShoppingCart),
      ],
    );
  }

  Widget _buildHeaderActionWidgets({
    String urlIcon = 'https://picsum.photos/250?image=9',
  }) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            border: Border.all(
              color: AppColors.grey1,
              width: 2,
            ),
          ),
          child: SvgPicture.asset(
            urlIcon,
            width: 32,
            height: 32,
          ),
        ),
        Positioned(
          top: 16,
          right: 14,
          child: Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColors.red,
            ),
          ),
        ),
      ],
    );
  }
}
