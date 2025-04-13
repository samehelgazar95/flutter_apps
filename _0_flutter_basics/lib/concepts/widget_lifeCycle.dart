import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WidgetLifeCycle(),
    );
  }
}

class WidgetLifeCycle extends StatefulWidget {
  const WidgetLifeCycle({super.key});
  @override
  State<WidgetLifeCycle> createState() => _WidgetLifeCycleState();
}

class _WidgetLifeCycleState extends State<WidgetLifeCycle> {
  @override
  void initState() {
    super.initState();
    log("InitState", name: "DEBUG");
  }
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    log("DidChangeDependencies", name: "DidChangeDependencies");
  }
  
  @override
  void didUpdateWidget(covariant WidgetLifeCycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    log("didUpdateWidget", name: "didUpdateWidget");
  }
  
  @override
  void deactivate() {
    super.deactivate();
    log("Deactivate", name: "Deactivate");
  }
  
  @override
  void dispose() {
    super.dispose();
    log("Dispose", name: "Dispose");
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons")),
      body: Center(),
      );
  }
}
