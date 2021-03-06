
import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  const InputCard({
    Key key,
    @required IconData icon,
    @required String title,
  })  : icon = icon,
        title = title,
        super(key: key);
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
