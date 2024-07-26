import 'package:flutter/material.dart';
import 'package:shoppe/core/common/widgets/category_title/category_title.dart';
import 'package:shoppe/features/home/presention/widgets/list_item_commodity_horizontal.dart';
import 'package:shoppe/features/home/presention/widgets/list_item_commodity_vertical.dart';

class LatestFavoriteTab extends StatelessWidget {
  const LatestFavoriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CategoryTitle(title: 'Khuyến mãi'),
          const ListItemCommodityHorizontal(),
          const ListItemCommodityVertical(),
          Text("Da hien thi het")
        ],
      ),
    );
  }
}
