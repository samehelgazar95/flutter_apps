
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
      initialRoute: '/',
      routes: {
        '/settingsScreen': (context) => const SettingsScreen(),
        '/profileScreen': (context) => const ProfileScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home"), backgroundColor: Colors.blue,),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.business), label: "Business"),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: "School"),
          ],
          backgroundColor: Colors.blueGrey,
          ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/settingsScreen');
                    },
                    icon: Icon(Icons.settings),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/profileScreen');
                    },
                    icon: Icon(Icons.face),
                    iconSize: 50,
                  ),
                ],
              )
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    icon: Icon(Icons.home),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/profileScreen');
                    },
                    icon: Icon(Icons.face),
                    iconSize: 50,
                  ),
                ],
              )
            ],
          ),
        )
      );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          backgroundColor: Colors.blueGrey,
        ),

        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Text(
                "Profile Screen",
                style: TextStyle(
                  fontSize: 50
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    icon: Icon(Icons.home),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/settingsScreen');
                    },
                    icon: Icon(Icons.settings),
                    iconSize: 50,
                  ),
                ],
              )
            ],
          ),
        )
      );
  }
}
