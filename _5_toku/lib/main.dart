import 'package:_5_toku/AsyncAwait.dart';
import 'package:flutter/material.dart';
// import 'dart:io';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/services.dart' show rootBundle;


class LearningArgs {
  final String title;
  final Color color;
  final int length;

  LearningArgs({required this.title, required this.color, required this.length});
}

void main() async {
  runApp(AsyncAwait());
}

// Toku
class Toku extends StatelessWidget {
  const Toku({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatelessWidget {
  // static String numbersJsonPath = 'assets/data/numbers.json';
  static const List<String> titles = ["Numbers", "Family Members", "Colors", "Phrases"]; 
  static const List<Color> colors = [Colors.orange, Colors.blueAccent, Colors.teal, Colors.green];
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor:  Colors.red,
          title: Text(
            "Toku",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 45,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0, right: 10.0),
              child: Text("Learn Japanese"),
            )
          ],
        ),
      
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children:[
                  Text(
                    "What do you learn about?",
                    style: TextStyle(
                      fontSize: 20,
                    )),
                  ...List.generate(
                    titles.length,
                    (index) => GestureDetector(
                      onTap: () {

                        // Handle here decoding the data 
                        // and pass it as list instead of length
                        // so i have to change the LearningArgs to using Map instead to be more flexible

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LearningScreen(),
                            settings: RouteSettings(
                              arguments: LearningArgs(
                                title: titles[index],
                                color: colors[index],
                                length: titles.length
                              )
                            ),
                            )
                        );
                      },
                      
                      child: Container(
                        width: 370,
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        decoration: BoxDecoration(
                          color: colors[index],
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        child: Center(
                          child: Text(
                            titles[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          )
                        ),
                      ),
                    )
                  )
                ],
              )
            ]
            )
          ),
        );
  }
}

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as LearningArgs;
    final String title = args.title;
    final Color color = args.color;
    final int length = args.length;
  
// Length will be from data arg instead of getting it directly
// each item has it's own image, sound, jp, en
// find a way to loop over the data and create ListTile for each item

    return Scaffold(
      appBar: AppBar(
        title: Text("Learn $title"),
        backgroundColor: color,
      ),
    
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(),
          itemCount: length,
  
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset("assets/images/numbers/1.png"),
              title: Text("Itsi"),
              subtitle: Text("One"),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(Icons.play_arrow)
              ),
            );
          },
          ),
        ),
      );
  }
}
