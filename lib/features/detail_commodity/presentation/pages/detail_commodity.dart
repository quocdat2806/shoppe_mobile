import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/features/detail_commodity/presentation/widgets/commodity_info.dart';
import 'package:shoppe/features/detail_commodity/presentation/widgets/list_item_comment.dart';

class DetailCommodity extends ConsumerStatefulWidget {
  const DetailCommodity({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return DetailCommodityState();
  }
}

class DetailCommodityState extends ConsumerState<DetailCommodity> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: const SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CommodityInfo(),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: ListItemComment(),
                ),
                // ListItemComment()
              ],
            ),
          ),
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
        ),
        Positioned(child: Icon(Icons.navigate_before),top: 42,left: 12,)
      ],
    );
  }
}
