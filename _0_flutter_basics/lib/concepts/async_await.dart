import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


// Number Class
class Number {
  final String image;
  final String sound;
  final String jp_name;
  final String en_name;

  const Number({required this.image, required this.sound, required this.jp_name, required this.en_name});

  factory Number.fromMap(Map<String, dynamic> map) {
    return switch (map) {
      {'image': String image, 'sound': String sound, 'jp_name': String jp_name, 'en_name': String en_name} =>
        Number(image: image, sound: sound, jp_name: jp_name, en_name: en_name),
      _ => throw const FormatException("Failed to load numbers"),
    };
  }
}

// Async Function
Future<List<Number>> fetchNumbers() async {
  String res = await rootBundle.loadString("assets/data/numbers.json");
  List<dynamic> numbersList = await jsonDecode(res)['numbers'];
  List<Number> numbersInstancesList = numbersList.map((numMap) => Number.fromMap(numMap)).toList();
  return numbersInstancesList;
}

// Stateless HomeScreen 
class AsyncAwait  extends StatefulWidget {
  const AsyncAwait({super.key});

  @override
  State<AsyncAwait> createState() => _AsyncAwait();
}

// Stateful Widget
class _AsyncAwait extends State<AsyncAwait> {
  late Future<List<Number>> futureNumbers;

@override
void initState() {
  super.initState();
  futureNumbers = fetchNumbers();
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Asynchronous"),),
          
          body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: FutureBuilder<List<Number>>(
              future: futureNumbers,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: snapshot.data!
                        .map((number) => Text(number.en_name))
                        .toList(),
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                return const CircularProgressIndicator();
              })
            ),
          ),
    );
  }
}
