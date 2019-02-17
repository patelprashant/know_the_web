import 'package:flutter/material.dart';
import 'package:know_the_web/statusCodeList/model/statusCode.dart';
import 'package:know_the_web/statusCodeList/status_code_item.dart';

class StatusCodes extends StatelessWidget {
  final List<StatusCodeModel> _statusCodes;

  StatusCodes(this._statusCodes);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildStatusCodeList(),
    );
  }

  List<StatusCodeItem> _buildStatusCodeList() {
    return _statusCodes.map((code) => new StatusCodeItem(code)).toList();
  }
}
