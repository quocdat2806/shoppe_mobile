import 'package:flutter/material.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: Column(
        children: [
          const Icon(Icons.ac_unit),
          Text(
            "Hambuger",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.blackS14W700,
          )
        ],
      ),
    );
  }
}
