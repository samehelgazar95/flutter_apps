import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home"), backgroundColor: Colors.blue,),

        body: Center(
          child: Container(
            width: 350,
            height: 350,
            alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              border: Border.all(color: Colors.black, width: 3),
            ),

            child: GestureDetector(
              onTap: () {
                print("onTap Gesture");
              },
              onDoubleTap: () {
                print("onDoubleTap Gesture");
              },
              onLongPress: () {
                print("onLongPress Gesture");
              },
              onTapDown: (TapDownDetails details) {
                print("onTapDown");
                print(details.globalPosition);
              },
              onTapUp: (TapUpDetails details) {
                print("onTapUp");
                print(details.globalPosition);
              },
              onTapCancel: () {
                print("onTapCancel");
              },

              // And many more functions

              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 2),
                ),

                child: Text(
                  "Gesture",
                  style: TextStyle(
                    backgroundColor: Colors.blueAccent,
                    fontSize: 50,
                  )
                  ),
              ),
            )
          ),
        )
      );
  }
}
