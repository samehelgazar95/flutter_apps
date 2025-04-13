import 'package:flutter/material.dart';

class AppRoutes {
  static const String homeRoute = '/';
  static const String firstScreenRoute = '/first_screen';
  static const String secondScreenRoute = '/second_screen';
}

class CustomRouter {
  static Route generateRoute(RouteSettings settings) {
    switch(settings.name) {
      case AppRoutes.homeRoute:
        var data = settings.arguments as String;
        return MaterialPageRoute(builder: (context) =>Scaffold(body: Text(data)));
      
      case AppRoutes.firstScreenRoute:
        var data = settings.arguments as String;
        return MaterialPageRoute(
          settings: RouteSettings(name: AppRoutes.firstScreenRoute),
          builder: (context) => Scaffold(body: Text(data))
          );
      
      case AppRoutes.secondScreenRoute:
        var data = settings.arguments as String;
        return MaterialPageRoute(
          settings: RouteSettings(name: AppRoutes.secondScreenRoute),
          builder: (context) => Scaffold(body: Text(data))
        );
      
      default:
        return MaterialPageRoute(builder: (context) => Scaffold(body: Text("Default")));
    }
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home Screen")),
//       body: Center(
//         child: Column(
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushReplacementNamed(context, AppRoutes.firstScreenRoute, arguments: "Hello From Home");
//               },
//               child: Text("First Screen"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushReplacementNamed(context, AppRoutes.secondScreenRoute, arguments: "Hello From Home");
//               },
//               child: Text("Second Screen"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FirstScreen extends StatelessWidget {
//   final String data;
//   const FirstScreen({required this.data ,super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("First Screen")),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.pushNamed(context, AppRoutes.homeRoute, arguments: "Data from home");
//         }
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Text("First Screen"),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushReplacementNamed(context, AppRoutes.firstScreenRoute, arguments: "Hello From Home");
//               },
//               child: Text("First Screen"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushReplacementNamed(context, AppRoutes.secondScreenRoute, arguments: "Hello From Home");
//               },
//               child: Text(data),
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   final String data;
//   const SecondScreen({required this.data ,super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Second Screen")),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.pushNamed(context, AppRoutes.homeRoute, arguments: "Data from home");
//         }
//       ),
//       body:  Center(
//         child: Column(
//           children: [
//             Text("Second Screen"),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushReplacementNamed(context, AppRoutes.firstScreenRoute);
//               },
//               child: Text("First Screen"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushReplacementNamed(context, AppRoutes.secondScreenRoute);
//               },
//               child: Text(data),
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }

// class DefaultScreen extends StatelessWidget {
//   const DefaultScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Default Screen")),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.pushNamed(context, AppRoutes.homeRoute, arguments: "Data from home");
//         }
//       ),
//       body:  Center(
//         child: Column(
//           children: [
//             Text("Default Screen"),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushReplacementNamed(context, AppRoutes.firstScreenRoute);
//               },
//               child: Text("First Screen"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushReplacementNamed(context, AppRoutes.secondScreenRoute);
//               },
//               child: Text("Second Screen"),
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }
