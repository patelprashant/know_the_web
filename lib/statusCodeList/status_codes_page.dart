import 'package:flutter/material.dart';
import 'package:know_the_web/statusCodeList/model/statusCode.dart';
import 'package:know_the_web/statusCodeList/status_codes.dart';

class StatusCodesPage extends StatelessWidget {
  _buildStatusCodeList() {
    return <StatusCodeModel>[
      const StatusCodeModel(
          code: '101',
          phrase: 'Phares for 101',
          description:
              'This is long long long very long description, This is long long long very long description ,This is long long long very long description'),
      const StatusCodeModel(
          code: '102',
          phrase: 'Phares for 102',
          description: 'This is long long long very long description'),
      const StatusCodeModel(
          code: '103',
          phrase: 'Phares for 103',
          description: 'This is long long long very long description'),
      const StatusCodeModel(
          code: '104',
          phrase: 'Phares for 104',
          description: 'This is long long long very long description'),
      const StatusCodeModel(
          code: '105',
          phrase: 'Phares for 105',
          description: 'This is long long long very long description'),
      const StatusCodeModel(
          code: '106',
          phrase: 'Phares for 106',
          description: 'This is long long long very long description'),
      const StatusCodeModel(
          code: '107',
          phrase: 'Phares for 107',
          description: 'This is long long long very long description'),
      const StatusCodeModel(
          code: '108',
          phrase: 'Phares for 108',
          description: 'This is long long long very long description'),
      const StatusCodeModel(
          code: '109',
          phrase: 'Phares for 109',
          description: 'This is long long long very long description'),
      const StatusCodeModel(
          code: '110',
          phrase: 'Phares for 110',
          description: 'This is long long long very long description'),
    ];
  }

//new StatusCodes(_buildStatusCodeList());
  @override
  Widget build(BuildContext context) {
    return new Expanded(child: new StatusCodes(_buildStatusCodeList()));
  }
}
