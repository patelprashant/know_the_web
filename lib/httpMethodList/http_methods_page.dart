import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:know_the_web/httpMethodList/http_methods.dart';
import 'package:know_the_web/httpMethodList/model/httpMethod.dart';

class HttpMethodsPage extends StatefulWidget {
  @override
  HttpMethodsPageState createState() => HttpMethodsPageState();
}

class HttpMethodsPageState extends State<HttpMethodsPage> {
  List<HttpMethodModel> httpMethodList;

  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: new FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/data/http-methods.json'),
            builder: (context, snapshot) {
              httpMethodList = parseJson(snapshot.data.toString());
              return httpMethodList.isNotEmpty
                  ? new HttpMethods(httpMethodList)
                  : new Center(
                      child: new CircularProgressIndicator(),
                    );
            }));
  }

  List<HttpMethodModel> parseJson(String response) {
    if (response == null) {
      return [];
    }
    final parsed =
        json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed
        .map<HttpMethodModel>((json) => new HttpMethodModel.fromJson(json))
        .toList();
  }
}
