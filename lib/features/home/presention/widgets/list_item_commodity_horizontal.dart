import 'package:flutter/material.dart';
import 'package:shoppe/features/home/presention/widgets/item_commodity_horizontal.dart';

class ListItemCommodityHorizontal extends StatelessWidget {
  const ListItemCommodityHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [1,2,3,4,5,6,7,8,9,10].map((i) => const ItemCommodityHorizontal()).toList(),
      ),
    );
  }
}
