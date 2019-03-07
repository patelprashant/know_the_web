import 'package:flutter/material.dart';
import 'package:know_the_web/httpMethodList/http_method_item_detail.dart';
import 'package:know_the_web/httpMethodList/model/httpMethod.dart';

class HttpMethodItem extends StatelessWidget {
  final HttpMethodModel _httpMethodModel;

  const HttpMethodItem(this._httpMethodModel);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          ListTile(
            title: new Text(
              _httpMethodModel.method,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: new Text(
              _httpMethodModel.description,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            isThreeLine: false,
            onTap: () => _navigateToMethodDetail(context, _httpMethodModel),
          ),
          new Divider(
            height: 10.0,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }

  _navigateToMethodDetail(
      BuildContext context, HttpMethodModel httpMethodModel) {
    MaterialPageRoute route = new MaterialPageRoute(
        builder: (context) =>
            HttpMethodItemDetail(httpMethod: httpMethodModel));

    Navigator.push(context, route);
  }
}
