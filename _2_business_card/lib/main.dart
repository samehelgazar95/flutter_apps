import 'package:flutter/material.dart';

void main() {
  runApp(BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF2B475E),
        appBar: AppBar(
          title: Center(
            child: Text("Business Card",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )),
          ),
          backgroundColor: Colors.teal,
        ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Logo(),
          SizedBox(height: 20),
          UserData(userName: "Sameh Mohamed", userTitle: "IOS Developer"),
          CustomDivider(),
          ContactButton(Icons.phone, "(+2) 01061372780"),
          SizedBox(height: 5),
          ContactButton(Icons.email, "selgazar95@gmail.com"),
          SizedBox(height: 100),
        ],
      )
      ),
    );
  }
}

// Logo
class Logo extends StatelessWidget {
  final String imagePath = "images/tharwat.png";
  
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     width: 200,
     height: 200,
     decoration: BoxDecoration(
      border: Border.all(
        color: Colors.white70,
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(100),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      )
     ),
    );
  }
}

// Name
class UserData extends StatelessWidget {
  final String userName; 
  final String userTitle;

  const UserData({required this.userName, required this.userTitle, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(userName,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: "Pacifico",
        ),),
        Text(userTitle,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black.withValues(alpha: 128),
        )),
      ],
    );
  }
}

// Contacts
class ContactButton extends StatelessWidget {
  final IconData contactIcon;
  final String contactData;

  const ContactButton(this.contactIcon, this.contactData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )
        ),
        child: Row(
          children: [
            SizedBox(width: 25),
            Icon(contactIcon, color: Colors.black87, size: 24),
            SizedBox(width: 20),
             Text(contactData,
                style: TextStyle(color: Colors.black87),
              ),
          ],
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
        height: 40,
        indent: 60,
        endIndent: 60,
        color: Colors.blueGrey
    );
  }
}
