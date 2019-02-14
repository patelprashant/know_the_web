import 'package:flutter/material.dart';

class StatusCodes extends StatefulWidget {
  @override
  _StatusCodeState createState() => _StatusCodeState();
}

class _StatusCodeState extends State<StatusCodes> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Icon(
          Icons.link,
          size: 60.0,
        ),
        Text('Status codes'),
      ],
    );
  }
}
