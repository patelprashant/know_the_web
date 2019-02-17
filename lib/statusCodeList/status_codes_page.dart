import 'package:flutter/material.dart';
import 'package:know_the_web/statusCodeList/model/statusCode.dart';
import 'package:know_the_web/statusCodeList/status_codes.dart';

class StatusCodesPage extends StatelessWidget {
  _buildStatusCodeList() {
    return <StatusCodeModel>[
      const StatusCodeModel(code: '101'),
      const StatusCodeModel(code: '102'),
      const StatusCodeModel(code: '103'),
      const StatusCodeModel(code: '104'),
      const StatusCodeModel(code: '105'),
      const StatusCodeModel(code: '106'),
      const StatusCodeModel(code: '107'),
      const StatusCodeModel(code: '108'),
      const StatusCodeModel(code: '109'),
      const StatusCodeModel(code: '110'),
    ];
  }

//new StatusCodes(_buildStatusCodeList());
  @override
  Widget build(BuildContext context) {
    return new Expanded(child: new StatusCodes(_buildStatusCodeList()));
  }
}
