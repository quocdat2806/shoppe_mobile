import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String? title;
  final Widget? trailingIcon;
  final String? trailingText;

  const CategoryTitle(
      {super.key, this.title, this.trailingIcon, this.trailingText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title ?? ''),
        Row(
          children: [
            Text(trailingText ?? ''),
            trailingIcon ?? const Icon(Icons.navigate_next),
          ],
        )
      ],
    );
  }
}
