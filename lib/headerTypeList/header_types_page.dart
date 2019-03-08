import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:know_the_web/headerTypeList/header_types.dart';
import 'package:know_the_web/headerTypeList/model/headerType.dart';

class HeaderTypesPage extends StatefulWidget {
  @override
  HeaderTypesPageState createState() => HeaderTypesPageState();
}

class HeaderTypesPageState extends State<HeaderTypesPage> {
  List<HeaderTypeModel> headerTypeList;

  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: new FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('assets/data/headers.json'),
            builder: (context, snapshot) {
              headerTypeList = parseJson(snapshot.data.toString());
              return headerTypeList.isNotEmpty
                  ? new HeaderTypes(headerTypeList)
                  : new Center(
                      child: new CircularProgressIndicator(),
                    );
            }));
  }

  List<HeaderTypeModel> parseJson(String response) {
    if (response == null) {
      return [];
    }
    final parsed =
        json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed
        .map<HeaderTypeModel>((json) => new HeaderTypeModel.fromJson(json))
        .toList();
  }
}
