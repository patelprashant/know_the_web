import 'package:flutter/material.dart';
import 'package:know_the_web/headerTypeList/header_type_item_detail.dart';
import 'package:know_the_web/headerTypeList/model/headerType.dart';

class HeaderTypeItem extends StatelessWidget {
  final HeaderTypeModel _headerTypeModel;

  const HeaderTypeItem(this._headerTypeModel);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          ListTile(
            title: new Text(
              _headerTypeModel.header,
              style: new TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: new Text(
              _headerTypeModel.description,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            isThreeLine: false,
            onTap: () => navigateToHeaderDetail(context, _headerTypeModel),
          ),
          new Divider(
            height: 10.0,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }

  navigateToHeaderDetail(
      BuildContext context, HeaderTypeModel headerTypeModel) {
    MaterialPageRoute route = new MaterialPageRoute(
        builder: (context) =>
            HeaderTypeItemDetail(headerType: headerTypeModel));

    Navigator.push(context, route);
  }
}
