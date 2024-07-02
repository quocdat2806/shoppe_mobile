import 'package:flutter/material.dart';

class ListCategory extends StatelessWidget {

  const ListCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1.25,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.75/2,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            child: Column(
              children: [
                Icon(Icons.ac_unit),
                Text("Deal Tot Hom Nay nha",textAlign: TextAlign.center,)
              ],
            )
          );
        },
      ),
    );
  }
}
