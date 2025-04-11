import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home"), backgroundColor: Colors.blue,),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Text(
                "Home Screen",
                style: TextStyle(
                  fontSize: 50
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen())
                  );
                },
                icon: Icon(Icons.settings),
                iconSize: 50,
              ),
            ],
          ),
        )
      );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
          backgroundColor: Colors.blueGrey,
        ),

        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Text(
                "Settings Screen",
                style: TextStyle(
                  fontSize: 50
                ),
              ),
              IconButton(
                onPressed: (){
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen())
                    );
                },
                icon: Icon(Icons.home),
                iconSize: 50,
              ),
            ],
          ),
        )
      );
  }
}
