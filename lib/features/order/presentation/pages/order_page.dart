import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppe/core/common/widgets/tabs_page/tab_page.dart';

class OrderPage extends ConsumerStatefulWidget {
  const OrderPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return OrderChildPage();
  }
}

class OrderChildPage extends ConsumerState<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return TabPage(
      listTabs: [
        "Dang den",
        "lich su",
        "danh gia",
        "don nhap",
      ],
      listWidgets: [],
    );
  }
}
