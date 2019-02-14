import 'package:flutter/material.dart';

class HeaderTypes extends StatefulWidget {
  @override
  _HeaderTypeState createState() => _HeaderTypeState();
}

class _HeaderTypeState extends State<HeaderTypes> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Icon(
          Icons.web,
          size: 60.0,
        ),
        Text('Header types'),
      ],
    );
  }
}
