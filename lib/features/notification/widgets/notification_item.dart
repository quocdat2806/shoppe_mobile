import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
       return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://i.pinimg.com/736x/0d/64/98/0d64989794b1a4c9d89bff571d3d5842.jpg',
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
              SizedBox(width: 16),
              const Text("Don hang chan ga sot muoi xa tac")
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 56),
            child: Text("1 sao")
          )
        ],
      ),
    );
  }
}
