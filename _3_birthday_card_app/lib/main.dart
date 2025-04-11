import 'package:flutter/material.dart';

void main() {
  runApp(BirthDay());
}

class BirthDay extends StatelessWidget {
  const BirthDay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // App Bar
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Center(
            child: Text("Happy Birthday!")
          ),
        ),

        // Body
        body: SizedBox(
          height: double.infinity,
          // width: double.infinity,
          child: Image(
            image: AssetImage('images/birthday_image.webp'),
            // image: NetworkImage('https://wallpapercave.com/w/p/wp14046444.jpg'),
            fit: BoxFit.cover,
            // repeat: ImageRepeat.repeat,
            // alignment: Alignment.topRight,
          ),
        )
      )
    );
  }
}
