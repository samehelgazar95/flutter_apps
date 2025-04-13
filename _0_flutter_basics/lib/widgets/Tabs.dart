import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabsExample(),
    );
  }
}

class TabsExample extends StatelessWidget {
  const TabsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return
    DefaultTabController(
      length: 3,

      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabs Demo"),

          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ]
          ),
        ),
        body: TabBarView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.directions_car),
                Text("Car Tab"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Icon(Icons.directions_transit),
                Text("Transit Tab"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Icon(Icons.directions_bike),
                Text("Bike Tab"),
              ],
            )
          ])
        )
      );
  }
}
