import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String homeRoute = '/';
  static const String firstRoute = '/first_route';
  static const String secondRoute = '/second_route';
  static const String subRoute = '${AppRoutes.firstRoute}/sub_route';
}

class GoRouterGenerator {
  static GoRouter appRouting = GoRouter(
    errorBuilder: (context, state) {
      return ErrorScreen();
    },
    
    routes: [
      GoRoute(
        name: AppRoutes.homeRoute,
        path: AppRoutes.homeRoute,
        builder: (context, state) => Home(),
      ),
      
      GoRoute(
        name: AppRoutes.firstRoute,
        path: AppRoutes.firstRoute,
        builder: (context, state) {
          var data = state.extra as String? ?? "No Data Provided";
          return First(data: data);
        },
        routes: [
          GoRoute(
            name: AppRoutes.subRoute,
            path: AppRoutes.subRoute,
            builder: (context, state) => SubPage()
          )
        ]
      ),
      
      GoRoute(
        name: AppRoutes.secondRoute,
        path: AppRoutes.secondRoute,
        builder: (context, state) {
          var data = state.extra as String? ?? "No Data Provided";
          return Second(data: data);
        }
      )
    ],
  );
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Column(
        children: [
          Text("Home"),
          ElevatedButton(
            onPressed: () {
              context.goNamed(AppRoutes.firstRoute, extra: "Data For First Screen");
            },
            child: Text("Go First")
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(AppRoutes.secondRoute, extra: "Data For Second Screen");
            },
            child: Text("Go Second")
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed(AppRoutes.subRoute);
            },
            child: Text("Go Sub")
          )
        ]
      ),
    );
  }
}

class First extends StatelessWidget {
  final String data;
  const First({required this.data, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First")),
      body: Column(
        children: [
          Text("First: $data"),
          ElevatedButton(
            onPressed: () {
              context.goNamed(AppRoutes.subRoute);
            },
            child: Text("Go Sub")
          )
        ],
      ),
    );
  }
}

class Second extends StatelessWidget {
  final String data;
  const Second({required this.data, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second")),
      body: Text("Second: $data"),
    );
  }
}

class SubPage extends StatelessWidget {
  const SubPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SubPage")),
      body: Text("SubPage"),
    );
  }
}

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Error")),
      body: Text("ErrorScreen"),
    );
  }
}
