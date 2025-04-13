import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomButtons(),
    );
  }
}

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buttons")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextBtn(),
            SizedBox(height: 30,),
            ElevatedBtn(),
            SizedBox(height: 30,),
            OutlinedBtn(),
            SizedBox(height: 30,),
            IconBtn(),
            SizedBox(height: 30,),
            InkwellBtn(),
            SizedBox(height: 30,),
            PopUpMenuBtn()
            // SizedBox(height: 30,),
            // DropDownBtn(),
          ],
        ),
      )
    );
  }
}

class TextBtn extends StatelessWidget {
  const TextBtn({super.key});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {print("Text Button Pressed");},
      onLongPress: () {print("Text Button Long Pressed");},
      style: TextButton.styleFrom(
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.black,
        overlayColor: Colors.green,
        fixedSize: Size(150, 50),
      ),
      child: Text("Text Button"),
      );
  }
}

class ElevatedBtn extends StatelessWidget {
  const ElevatedBtn({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){print("Elevated Button Pressed");},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
      child: Text("Elevated Button")
    );
  }
}

class OutlinedBtn extends StatelessWidget {
  const OutlinedBtn({super.key});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {print("Outlined Button Pressed");},
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black,
        side: BorderSide(color: Colors.red, width: 1.5),
        overlayColor: Colors.red,
      ),
      child: Text("Outlined Button"),
    );
  }
}

class IconBtn extends StatelessWidget {
  const IconBtn({super.key});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){print("Icon Button Pressed");},
      icon: Icon(Icons.sim_card_alert_outlined, size: 50),
      style: IconButton.styleFrom(
        foregroundColor: Colors.red,
        backgroundColor: Colors.yellow,
      )
  );
  }
}

class InkwellBtn extends StatelessWidget {
  const InkwellBtn({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {print("Inkwell Button Pressed");},
      splashColor: Colors.red,
      highlightColor: Colors.blue,
      enableFeedback: true,
      child: Text("Inkwell Button"),
    );
  }
}

class PopUpMenuBtn extends StatelessWidget {
  const PopUpMenuBtn({super.key});
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuItem<String>>[
          const PopupMenuItem<String>(value: "option1", child: Text("Option 1")),
          const PopupMenuItem<String>(value: "option2", child: Text("Option 2")),
          const PopupMenuItem<String>(value: "option3", child: Text("Option 3")),
          const PopupMenuItem<String>(value: "option4", child: Text("Option 4")),
        ];
      },
      onSelected: (value) {print(value);},
      icon: Icon(Icons.more_vert),
    );
  }
}

// class DropDownBtn extends StatelessWidget {
//   String _selectedOption = "Option 1";
//   final List<String> _options = ["Option 1", "Option 2", "Option 3", "Option 4"];
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       items: _options.map((String option) {
//         return DropdownMenuItem(
//           value: option,
//           child: Text(option),
//           );
//       }),
//       onChanged: null);
//   }
// }
