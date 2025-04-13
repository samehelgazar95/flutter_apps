import 'package:flutter/material.dart';

class MySummary extends StatelessWidget {
  const MySummary({super.key});
static const commonStyling = TextStyle(
  fontSize: 17
); 

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
        style: commonStyling,
        child: SizedBox(
          width: 700,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                  "Summary",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  )
                ),
              SizedBox(height: 10),
              Text("Creative and detail-oriented Mobile Developer with hands-on experience in building high-performance, responsive applications for Android and iOS using Flutter. Proficient in Dart, Firebase, REST APIs, and third-party integrations. Strong understanding of mobile UI/UX design principles and adaptive layouts. Adept at debugging, performance optimization, and writing clean, maintainable code. Passionate about delivering smooth user experiences and staying updated with the latest mobile trends and technologies."),
            ]
                ),
        )
    );
  }
}
