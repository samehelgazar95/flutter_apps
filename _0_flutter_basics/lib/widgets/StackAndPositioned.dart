import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StackPositioned(),
    );
  }
}

class StackPositioned extends StatefulWidget {
  const StackPositioned({super.key});
  @override
  State<StackPositioned> createState() => _StackPositionedState();
}

class _StackPositionedState extends State<StackPositioned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack")),
      body: Center(
        child: Stack(
          children: [
            Container(width: 120, height: 120, color: Colors.yellow),
            Container(width: 90, height: 90, color: Colors.blue),
            Container(width: 60, height: 60, color: Colors.green),
            Positioned(
              bottom: 30,
              right: 30,
              child: Container(
                color: Colors.red,
                width: 30,
                height: 30,
                ),
            )
          ],
        ),
      ),
      );
  }
}
