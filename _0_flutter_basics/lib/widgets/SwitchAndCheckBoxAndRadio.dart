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
      home: SwitchAndCheckBoxAndRadio(),
    );
  }
}

class SwitchAndCheckBoxAndRadio extends StatefulWidget {
  const SwitchAndCheckBoxAndRadio({super.key});
  @override
  State<SwitchAndCheckBoxAndRadio> createState() => _SwitchAndCheckBoxAndRadioState();
}

class _SwitchAndCheckBoxAndRadioState extends State<SwitchAndCheckBoxAndRadio> {
  bool isSwitched = false;
  bool isChecked = false;
  String? groupVal1;
  Color? btnBgColor;
  Color? btnTextColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack")),
      body: Center(
        child: Column(
          children: [
            Switch(
              value: isSwitched,
              activeColor: Colors.green,
              inactiveThumbColor: Colors.red,
              onChanged: (val) {
                setState(() {
                  isSwitched = val;
                });
                log("isSwitched: $isSwitched");
                log("val: $val");
                },
            ),
            Checkbox(
              value: isChecked,
              activeColor: Colors.green,
              onChanged: (value) {
                setState(() {isChecked = value!;});
              },
            ),
            Divider(color: Colors.black, height: 5),
            Radio(
              value: "answer1",
              groupValue: groupVal1,
              activeColor: Colors.blueAccent,
              onChanged: ((val) {
                setState(() {
                  groupVal1 = val;
                });
              }),
            ),
            Radio(
              value: "answer2",
              groupValue: groupVal1,
              activeColor: Colors.blueAccent,
              onChanged: ((val) {
                setState(() {
                  groupVal1 = val;
                });
              }),
            ),
            Radio(
              value: "answer3",
              groupValue: groupVal1,
              activeColor: Colors.blueAccent,
              onChanged: ((val) {
                setState(() {
                  groupVal1 = val;
                });
              }),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  groupVal1 == "answer2" ? btnBgColor = Colors.green : btnTextColor = Colors.white;
                  groupVal1 != "answer2" ? btnBgColor = Colors.red : btnTextColor = Colors.white;
                });
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: btnTextColor,
                backgroundColor: btnBgColor,
              ),
              child: Text("Submit"))
          ]
        ) 
      ),
      );
  }
}
