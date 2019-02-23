import 'package:flutter/material.dart';
import 'package:know_the_web/statusCodeList/model/statusCode.dart';

class StatusCodeItem extends StatelessWidget {
  final StatusCodeModel _statusCodeModel;

  StatusCodeItem(this._statusCodeModel);

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Column(
      children: <Widget>[
        ListTile(
          leading: new Text(
            _statusCodeModel.code,
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          title: new Text(
            _statusCodeModel.phrase,
            style: new TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: new Text(
            _statusCodeModel.description,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          isThreeLine: false,
        ),
        new Divider(
          height: 10.0,
          color: Colors.blueGrey,
        ),
      ],
    ));
  }
}
