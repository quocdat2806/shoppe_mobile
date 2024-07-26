import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Nap tien bang ngan hang"),
        ),
        ListTile(
          title: Text("Nap tien bang the dien thoai"),
        ),
      ],
    );
  }
}
