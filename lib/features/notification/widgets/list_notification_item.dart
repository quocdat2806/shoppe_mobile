import 'package:flutter/material.dart';
import 'package:shoppe/features/notification/widgets/notification_item.dart';

class ListNotificationItem extends StatelessWidget {
  const ListNotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
       return  ListView.builder(physics: const NeverScrollableScrollPhysics(),itemCount: 10,itemBuilder: (context,index){
      return const NotificationItem();
    },shrinkWrap: true,);
  }
}
