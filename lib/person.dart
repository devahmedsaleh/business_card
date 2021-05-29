import 'package:flutter/material.dart';

class Person {
  const Person({
      @required this.name,
      @required this.email,
      @required this.phoneNumber,
      @required this.jobTitle
  });

  final String name;
  final String jobTitle;
  final String phoneNumber;
  final String email;
}
