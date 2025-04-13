import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});
  static const Map<String, String> projectsData = {
      "title1": "Responsive and Adaptive App",
      "desc1": "Developed a tutorial app focused on creating responsive and adaptive UIs that adjust to all screen sizes. Ensured the app layout dynamically fits phones, tablets, and different resolutions using Flutter’s layout tools",
      "title2": "Navigation App",
      "desc2": "Built a navigation-based app demonstrating seamless screen transitions. Implemented navigation techniques in Flutter (including named routes and GoRouter) to ensure smooth and scalable routing across the entire app",
    };

  @override
  Widget build(BuildContext context) {
    bool isWideScreen = MediaQuery.of(context).size.width > 600;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 8),
          child: Text("Projects",
          textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )
          ),
        ),
        isWideScreen
          ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                child: ProjectTemplate(title: projectsData['title1']!, desc: projectsData['desc1']!)
                ),
              SizedBox(width: 15),
              SizedBox(
                width: 350,
                child: ProjectTemplate(title: projectsData['title2']!, desc: projectsData['desc2']!)
                ),
            ])
          :
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProjectTemplate(title: projectsData['title1']!, desc: projectsData['desc1']!,),
                SizedBox(height: 15),
                ProjectTemplate(title: projectsData['title2']!, desc: projectsData['desc2']!,),
              ]
            )
      ],
    );
  }
}

class ProjectTemplate extends StatelessWidget {
  final String title;
  final String desc;
  const ProjectTemplate({required this.title , required this.desc, super.key});

  static const commonStyling = TextStyle(
  fontSize: 17
);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
        style: commonStyling,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    )
                  ),
                SizedBox(height: 10),
                Text(
                  desc,
                  textAlign: TextAlign.center,
                  ),
              ]
                  ),
          ),
        )
    );
  }
}
