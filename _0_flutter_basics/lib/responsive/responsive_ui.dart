import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Responsiveness(),
    );
  }
}

class Responsiveness extends StatelessWidget {
  const Responsiveness({super.key});
  @override
  Widget build(BuildContext context) {

    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    // // Orientation.landscape || Orientation.portrait
    // Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(title: Text("Expanded - Flexible")),
      body: Column(
        children: [
          // Expanded(
          //   flex: 1,
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     decoration: BoxDecoration(
          //       color: Colors.redAccent,
          //     ),
          //     child: Text("Container 1"),
          //   ),
          // ),
          // Expanded(
          //   flex: 2,
          //   child: Container(
          //     width: 100,
          //     height: 100,
          //     decoration: BoxDecoration(
          //       color: Colors.yellow,
          //     ),
          //     child: Text("Container 1"),
          //   ),
          // ),
          // SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                  ),
                  child: Text("Container 2"),
                ),
              ),
              SizedBox(width: 50,),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: Text("Container 1"),
              ),
            ]
          ),

          Row(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: Text("Flex 1"),
                )
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                  ),
                  child: Text("Flex 2"),
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}
