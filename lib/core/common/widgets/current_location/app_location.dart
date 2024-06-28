import 'package:flutter/material.dart';
import 'package:shoppe/core/common/text_styles/app_text_styles.dart';

class AppLocationWidget extends StatelessWidget {
  const AppLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Giao den"),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Ngõ 136 Đ.Cầu Diễn,Minh Khai,Từ Liêm xxxxxxxxxxxxxxxxxx ",
                  style: AppTextStyle.grey.copyWith(overflow: TextOverflow.ellipsis),
                ),
              ),
              const Icon(Icons.navigate_next)
            ],
          )

        ],
      ),
    );
  }
}
