import 'package:flutter/material.dart';
import 'package:shoppe/core/common/widgets/category_title/category_title.dart';
import 'package:shoppe/features/notification/widgets/list_notification_item.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(

      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryTitle(
              title: 'Thong bao',
              trailingText: '',
              trailingIcon: Icon(Icons.settings),
            ),
            ListTile(
              trailing: Icon(Icons.add),
              title: Text("hihi"),
              subtitle: Text("khuyen"),
              leading: Icon(Icons.ac_unit),
            ),
            ListTile(
              trailing: Icon(Icons.add),
              title: Text("Tin tuc"),
              subtitle: Text("khuyen"),
              leading: Icon(Icons.ac_unit),
            ),
            Text("Cap nhat quan trong"),
            ListNotificationItem()
          ],
        ),
      ),
    );
  }
}
