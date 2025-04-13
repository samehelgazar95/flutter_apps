import 'package:_1_portfolio/avatar.dart';
import 'package:_1_portfolio/name_title.dart';
import 'package:flutter/material.dart';

class AvatarNameTitle extends StatelessWidget {
  const AvatarNameTitle({super.key});


  @override
  Widget build(BuildContext context) {
  final double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 600) { // Tablet
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Avatar(),
          SizedBox(width: 280),
          NameTitle(),
        ]
      );
    } else { // Mobile
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Avatar(),
          SizedBox(height: 20),
          NameTitle()
        ]
      );
    }
  }
}