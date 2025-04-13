import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: 180,
          height: 180,
          child: CircleAvatar(
          backgroundImage: const AssetImage("assets/portfolio_image.jpg"),
        )
        );
  }
}
