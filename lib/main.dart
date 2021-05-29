import 'package:business_card/person.dart';
import 'package:flutter/material.dart';

import 'package:business_card/input_card.dart';

void main() {
  runApp(
    BusinessCard(
      Person(
        name: 'Ahmed Saleh',
        email: 'ahmedsaleh@email.com',
        jobTitle: 'Engineer',
        phoneNumber: '+00 123 456 789',
      ),
    ),
  );
}

class BusinessCard extends StatelessWidget {
  BusinessCard(this.person);
  final Person person;

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
                person.name,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                person.jobTitle.toUpperCase(),
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
              InputCard(
                icon: Icons.phone,
                title: person.phoneNumber,
              ),
              InputCard(
                icon: Icons.email,
                title: person.email,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
