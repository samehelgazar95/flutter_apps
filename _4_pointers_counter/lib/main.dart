import 'package:flutter/material.dart';

void main() {
  runApp(const PointerCounter());
}

class PointerCounter extends StatefulWidget {
  const PointerCounter({super.key});

  @override
  State<PointerCounter> createState() => _PointerCounterState();
}

class _PointerCounterState extends State<PointerCounter> {
  int counterA = 0;
  int counterB = 0;

  void incrementABy(int val) {
    if (val == 0) {
      setState(() {
        counterA = 0;
      });
    }

    setState(() {
      counterA += val;
    });
  }
  void incrementBBy(int val) {
    if (val == 0) {
      setState(() {
        counterB = 0;
      });
    }

    setState(() {
      counterB += val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dynamic Counter"),
          backgroundColor: Colors.redAccent,
        ),

        body: Column(
          children: [
            const SizedBox(
              height: 42,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 180,
                  child: Column(
                    children: [
                      CustomTitle(title: "Counter A"),
                      CustomStyledCounter(title: "$counterA"),
                      CustomButton(text: "Increment 1", onClick: () => incrementABy(1)),
                      CustomButton(text: "Increment 2", onClick: () => incrementABy(2)),
                      CustomButton(text: "Increment 3", onClick: () => incrementABy(3)),
                    ],
                  ),
                ),
                CustomVerticalDivider(),
                SizedBox(
                  width: 180,
                  child: Column(
                    children: [
                      CustomTitle(title: "Counter B"),
                      CustomStyledCounter(title: "$counterB"),
                      CustomButton(text: "Increment 1", onClick: () {incrementBBy(1);}),
                      CustomButton(text: "Increment 2", onClick: () {incrementBBy(2);}),
                      CustomButton(text: "Increment 3", onClick: () {incrementBBy(3);}),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 30,
              children: [
                CustomButton(text: "Reset A", hPadding: 35, onClick: () {incrementABy(0);}),
                CustomButton(text: "Reset B", hPadding: 35, onClick: () {incrementBBy(0);}),
              ]
              ),
            const Spacer(flex: 2),
          ],
        )
      ),
    );
  }
}

class CustomTitle extends StatelessWidget {
  final String? title;

  const CustomTitle({this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text("$title",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            );
  }
}

class CustomStyledCounter extends StatelessWidget {
  final String? title;

  const CustomStyledCounter({this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text("$title",
              style: TextStyle(
                fontSize: 100,
              ),
            );
  }
}

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
            height: 450,
            child: VerticalDivider(
                      width: 20,
                      thickness: 3,
                      color: Color.fromARGB(255, 206, 205, 205),
                    ),
          );
  }
}

class CustomButton extends StatelessWidget {
  final String? text;
  final double vPadding;
  final double hPadding;
  final VoidCallback onClick ;

  const CustomButton({required this.text, this.vPadding = 15.0, this.hPadding = 15.0, required this.onClick, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: onClick,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: vPadding, horizontal: hPadding),
                  backgroundColor: Colors.amberAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text("$text",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
            );
  }
}
