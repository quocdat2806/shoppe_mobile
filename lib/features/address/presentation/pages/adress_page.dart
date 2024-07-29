import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdressPage extends ConsumerStatefulWidget{
  const AdressPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
  return AdressChildPage();
  }

}

class AdressChildPage extends ConsumerState<AdressPage>{
  @override
  Widget build(BuildContext context) {
   return SafeArea(child:
   Column(
     children: [
       ListTile(
         title: Text("nha"),
     subtitle: Text("Second One Text +\nThis is Line Third Text"),
         isThreeLine: true,
         trailing: Icon(Icons.add),
         leading: Icon(Icons.ac_unit),
       )
     ]
   )

   );
  }
}