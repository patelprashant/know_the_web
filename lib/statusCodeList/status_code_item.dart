import 'package:flutter/material.dart';
import 'package:know_the_web/statusCodeList/model/statusCode.dart';

class StatusCodeItem extends StatelessWidget {
  final StatusCodeModel _statusCodeModel;

  StatusCodeItem(this._statusCodeModel);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: new Text(_statusCodeModel.code),
//      title: new Text(_statusCodeModel.phrase),
    );
  }
}
