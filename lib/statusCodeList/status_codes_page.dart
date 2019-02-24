import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:know_the_web/statusCodeList/model/statusCode.dart';
import 'package:know_the_web/statusCodeList/status_codes.dart';

class StatusCodesPage extends StatefulWidget {
  @override
  StatusCodePageState createState() => new StatusCodePageState();
}

class StatusCodePageState extends State<StatusCodesPage> {
  List<StatusCodeModel> statusCodeList;

  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: new FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/data/status-codes.json'),
            builder: (context, snapshot) {
              statusCodeList = parseJson(snapshot.data.toString());
              return statusCodeList.isNotEmpty
                  ? new StatusCodes(statusCodeList)
                  : new Center(
                      child: new CircularProgressIndicator(),
                    );
            }));
  }
}

List<StatusCodeModel> parseJson(String response) {
  if (response == null) {
    return [];
  }
  final parsed = json.decode(response.toString()).cast<Map<String, dynamic>>();
  return parsed
      .map<StatusCodeModel>((json) => new StatusCodeModel.fromJson(json))
      .toList();
}
