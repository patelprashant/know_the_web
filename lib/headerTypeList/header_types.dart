import 'package:flutter/material.dart';
import 'package:know_the_web/headerTypeList/header_type_item.dart';
import 'package:know_the_web/headerTypeList/model/headerType.dart';

class HeaderTypes extends StatelessWidget {
  final List<HeaderTypeModel> _headerTypes;

  const HeaderTypes(this._headerTypes);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.symmetric(vertical: 8.0),
      children: _buildHeaderTypeList(),
    );
  }

  List<HeaderTypeItem> _buildHeaderTypeList() {
    return _headerTypes.map((method) => new HeaderTypeItem(method)).toList();
  }
}
