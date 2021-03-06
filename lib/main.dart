import 'package:flutter/material.dart';

void main() => runApp(BusinessCard());

class BusinessCard extends StatelessWidget {
  final String _name = 'Ahmed Saleh';
  final String _jobTitle = 'Engineer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Card',
      theme: ThemeData(
        primaryColor: Colors.teal.shade100,
        scaffoldBackgroundColor: Colors.teal,
        fontFamily: 'Source Sans Pro',
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/face.png'),
              ),
              Text(
                _name,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                _jobTitle.toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
