import 'package:flutter/material.dart';
import 'package:know_the_web/httpMethodList/http_method_item.dart';
import 'package:know_the_web/httpMethodList/model/httpMethod.dart';

class HttpMethods extends StatelessWidget {
  final List<HttpMethodModel> _httpMethods;

  const HttpMethods(this._httpMethods);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildHttpCodeList(),
    );
  }

  List<HttpMethodItem> _buildHttpCodeList() {
    return _httpMethods.map((method) => new HttpMethodItem(method)).toList();
  }
}
