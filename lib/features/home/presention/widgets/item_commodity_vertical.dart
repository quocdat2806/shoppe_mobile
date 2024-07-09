import 'package:flutter/material.dart';
import 'package:shoppe/core/common/color/app_colors.dart';
import 'package:shoppe/features/home/presention/widgets/item_commodity_info.dart';

class ItemCommodityVertical extends StatelessWidget {
  const ItemCommodityVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: AppColors.grey,
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXZylLZLdEOnpA7xCFv_tEqFvcThCY70wK7Q&s'),
                    )),
              ),
            ),
          ),
          const SizedBox(width: 12),
          const Expanded(
            flex: 2,
            child: ItemCommodityInfo(),
          ),
        ],
      ),
    );
  }
}
