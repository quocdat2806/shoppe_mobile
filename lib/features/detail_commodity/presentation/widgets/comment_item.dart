
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.network(
                'https://i.pinimg.com/736x/0d/64/98/0d64989794b1a4c9d89bff571d3d5842.jpg',
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
              const Text("trang nguyen")
            ],
          ),
           Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("1 sao"),
                const Text("Ngon"),
                Row(
                  children: [
                    Image.network(
                      'https://i.pinimg.com/736x/0d/64/98/0d64989794b1a4c9d89bff571d3d5842.jpg',
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
                Text("17:03:2024")
              ],
            ),
          )
        ],
      ),
    );
  }
}
