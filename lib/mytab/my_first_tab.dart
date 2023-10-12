import 'package:double_tab_app/components/nested_tabbar.dart';
import 'package:flutter/material.dart';

class MyFirstTab extends StatelessWidget {
  const MyFirstTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primary and secondary TabBar"),
        bottom: TabBar(
          dividerColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              text: 'Flights',
              icon: Icon(Icons.flight),
            ),
            Tab(
              text: 'Trips',
              icon: Icon(Icons.luggage),
            ),
            Tab(
              text: 'Explore',
              icon: Icon(Icons.explore),
            ),
          ],
        ),
      ),
      body: const TabBarView(children: <Widget>[
        NestedTabBar('Flights'),
        NestedTabBar('Trips'),
        NestedTabBar('Explore'),
      ]),
    );
  }
}
