import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return ProfileChildPage();
  }
}
class ProfileChildPage extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 220,
                color: Colors.red,
              ),
              Column(
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    title: Text("hihi"),
                    actions: [
                      Icon(Icons.settings),
                      Icon(Icons.settings),
                      Icon(Icons.settings),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("a"),
                          Text("a"),
                        ],
                      ),
                      Column(
                        children: [
                          Text("bac"),
                          Text("5dang theo doi"),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          ListTile(
            trailing: Icon(Icons.settings),
            title: Text("vi voucher"),
            leading: Icon(Icons.add),
          ),
          ListTile(
            trailing: Icon(Icons.settings),
            title: Text("vi voucher"),
            leading: Icon(Icons.add),
          ),
          ListTile(
            trailing: Icon(Icons.settings),
            title: Text("vi voucher"),
            leading: Icon(Icons.add),
          ),
          ListTile(
            trailing: Icon(Icons.settings),
            title: Text("vi voucher"),
            leading: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
