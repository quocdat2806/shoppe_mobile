import 'package:flutter/material.dart';

class  TabPage extends StatelessWidget {
  const  TabPage({super.key, required this.listTabs, required this.listWidgets});
 final List<String>listTabs;
 final List<Widget>listWidgets;
  @override
  Widget build(BuildContext context) {
   return  DefaultTabController(
      length: listTabs.length,
      child: Expanded(
        child: Column(
          children: [
            TabBar(
              tabs: buildTabItems(),
            ),
            Expanded(
              child: TabBarView(
                children:listWidgets,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildTabItems() {
    List<Widget> items = [];
    for (int i = 0; i < (listTabs).length; i++) {
     items.add(Tab(text: listTabs[i]));
    }
    return items;
  }
}
