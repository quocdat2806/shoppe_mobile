import 'package:flutter/material.dart';

class DotItem extends StatelessWidget {
  const DotItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 5,
      height: 2,
      color: Colors.red,
    );
  }
}
