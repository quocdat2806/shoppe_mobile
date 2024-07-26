import 'package:flutter/material.dart';
import 'package:shoppe/features/home/presention/widgets/item_commodity_info.dart';

class ItemCommodityHorizontal extends StatelessWidget {
  const ItemCommodityHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 12),
      width: MediaQuery.sizeOf(context).width / 2,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://picsum.photos/250?image=9'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          const ItemCommodityInfo(),
        ],
      ),
    );
  }
}
