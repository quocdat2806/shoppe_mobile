import 'package:flutter/material.dart';
import 'package:shoppe/features/home/presention/widgets/category_item.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.25 / 1,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            childAspectRatio: 1,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const CategoryItem();
          },
        ),
      );
  }
}
