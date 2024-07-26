import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppe/core/common/color/app_colors.dart';
import 'package:shoppe/core/common/svgs/app_svgs.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';

class CommodityInfo extends StatelessWidget {
  const CommodityInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).width,
          child: Image.network(
            'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   children: [
              //     Text("top ban chay"),
              //     Text("1.5 km"),
              //   ],
              // ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    "Ga u muoi nua con",
                    style: AppTextStyle.blackS20Bold,
                  )),
                  Text(
                    "giam 20%",
                    style: AppTextStyle.blackS20Bold,
                  ),
                ],
              ),
              Text(
                "Ga u muoi nua con an rat ngon",
                style: AppTextStyle.greyS14W700,
              ),
              Row(
                children: [
                  Text(
                    "350 da ban",
                    style: AppTextStyle.greyS14W700,
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 2,
                    height: 14,
                    color: AppColors.grey2,
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppSVGs.icStar,
                        width: 16,
                        height: 16,
                      ),
                      SvgPicture.asset(
                        AppSVGs.icStar,
                        width: 16,
                        height: 16,
                      ),
                      SvgPicture.asset(
                        AppSVGs.icStar,
                        width: 16,
                        height: 16,
                      ),
                      SvgPicture.asset(
                        AppSVGs.icStar,
                        width: 16,
                        height: 16,
                      ),
                      SvgPicture.asset(
                        AppSVGs.icStar,
                        width: 16,
                        height: 16,
                      ),
                    ],
                  ),
                  const SizedBox(width: 8),
                  SvgPicture.asset(AppSVGs.icFavorite)
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "55.000",
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                      Text("41.000"),
                    ],
                  ),
                  Icon(Icons.add),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
