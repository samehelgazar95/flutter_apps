import 'package:flutter/material.dart';

class NameTitle extends StatelessWidget {
  const NameTitle({super.key});
  static const commonTextStyle = TextStyle(
    fontSize: 25,
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: commonTextStyle,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Sameh ElGazar",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                )
                ),
              SizedBox(height: 5),
              Text("Mobile Developer"),
            ]
          )
    );
  }
}


