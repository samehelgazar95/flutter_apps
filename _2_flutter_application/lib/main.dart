import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // App bar with a title
        appBar: const CustomAppBar(),

        // Floating Action Button
        floatingActionButton: CustomFloatingActionButton(),

        // Bottom Navigation Bar
        bottomNavigationBar: CustomBottomNavigationBar(),

        // The Homepage body content
        body: CustomBody()
      ),

      debugShowCheckedModeBanner: false,
    );
  }
}


// Custom App Bar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

 @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Hello World"),
      backgroundColor: Colors.amber[600],
      foregroundColor: Colors.black,
      centerTitle: true,
      toolbarOpacity: .8,
      toolbarHeight: 60,      
    );
  }

    @override
  Size get preferredSize => const Size.fromHeight(60); // Required for AppBar
}


class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.blue,
      elevation: 10.0,
      child: const Icon(Icons.add, color: Colors.white),
      onPressed: () {},
    );
}
}


// Custom Bottom Navigation Bar
class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.amber[600],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Profile",
            ),
          ],
          onTap: (int indexOfItem) {},
        );
  }
}


// Custom Body
class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
            height: 400,
            width: 400,
            alignment: Alignment.center,
            // transform: Matrix4.rotationZ(0.1),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black, width: 3),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 5.0,
                children: <Widget>[
                  Text("Container1"),
                  Text("Container2"),
                  Text("Container3"),
                  Text("Container4"),
                  ElevatedButton(onPressed: () {}, child: Text('Click here')),
                ],
              ),
            ),
          ),
        );
  }
}
