import 'package:flutter/material.dart';

class HttpMethods extends StatefulWidget {
  @override
  _HttpMethodState createState() => _HttpMethodState();
}

class _HttpMethodState extends State<HttpMethods> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Icon(
          Icons.http,
          size: 60.0,
        ),
        Text('Methods'),
      ],
    );
  }
}
