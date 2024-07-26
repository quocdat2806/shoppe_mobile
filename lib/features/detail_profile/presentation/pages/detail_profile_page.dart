import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailProfilePage extends ConsumerStatefulWidget {
  const DetailProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return DetailProfileChildPage();
  }
}
class DetailProfileChildPage extends ConsumerState<DetailProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
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
