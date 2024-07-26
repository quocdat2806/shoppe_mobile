import 'package:flutter/material.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';

class CategoryTitle extends StatelessWidget {
  final String? title;
  final Widget? trailingIcon;
  final String? trailingText;

  const CategoryTitle(
      {super.key, this.title, this.trailingIcon, this.trailingText ='Xem tất cả'});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title ?? '',style: AppTextStyle.blackS16W700,),
        Row(
          children: [
            Text(trailingText ?? '',style: AppTextStyle.greenS14BoldW700),
            trailingIcon ?? const SizedBox.shrink(),
          ],
        )
      ],
    );
  }
}
