
import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  const InputCard({ @required this.icon, @required this.title});
  
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(
          title,
        ),
      ),
    );
  }
}
