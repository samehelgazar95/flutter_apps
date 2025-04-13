import 'package:_1_portfolio/avatar_name_title.dart';
import 'package:_1_portfolio/my_summary.dart';
import 'package:_1_portfolio/projects.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      home: const Portfolio(),
    );
  }
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio"),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          AvatarNameTitle(),
          MySummary(),
          Projects()
        ],),
      )
    );
  }
}



/**
Mobile:
  avatar
  name_title
  summary
  projects
  download_btn

Tablet
  avatar    name_title
      summary
      projects
      download_btn

>> download_btn width will be doubled for tablet


tablet_struct:
Column(
  children: [
    Row(
      children: [
        avatar(),
        name_title()
      ]
    ),
    summary(),
    projects(),
    download_btn()
  ]
)

mobile_struct:
Column(
  children: [
    avatar(),
    name_title(),
    summary(),
    projects(),
    download_btn()
  ]
)

adaptive_struct:
Column(
  children: [
    if (screen_width > 600) {
      Row(
        children: [
          avatar(),
          name_title()
        ]
      ),
    } else {
      avatar(),
      name_title()
    },
    summary(),
    projects(),
    download_btn()
  ]
)
*/
