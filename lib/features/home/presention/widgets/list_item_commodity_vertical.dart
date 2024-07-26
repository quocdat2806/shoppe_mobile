import 'package:flutter/material.dart';
import 'package:shoppe/features/home/presention/widgets/item_commodity_vertical.dart';

class ListItemCommodityVertical extends StatelessWidget {
  const ListItemCommodityVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(physics: const NeverScrollableScrollPhysics(),itemCount: 10,itemBuilder: (context,index){
      return const ItemCommodityVertical();
    },shrinkWrap: true,);
  }
}
