import 'package:flutter/material.dart';

void main() => runApp(BusinessCard());

class BusinessCard extends StatelessWidget {
  final String _name = 'Ahmed Saleh';
  final String _jobTitle = 'Engineer';
  final String _phoneNumber = '+00 123 456 789';
  final String _email = 'ahmedsaleh@email.com';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business Card',
      theme: ThemeData(
        primaryColor: Colors.teal.shade100,
        scaffoldBackgroundColor: Colors.teal,
        fontFamily: 'Source Sans Pro',
        dividerColor: Colors.teal.shade100,
        cardTheme: CardTheme(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        ),
        textTheme: TextTheme(
          subtitle1: TextStyle(
            color: Colors.teal.shade900,
            fontSize: 18,
          ),
        ),
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
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    _phoneNumber,
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    _email,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
