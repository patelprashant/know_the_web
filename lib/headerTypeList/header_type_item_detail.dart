import 'package:flutter/material.dart';
import 'package:know_the_web/headerTypeList/model/headerType.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderTypeItemDetail extends StatelessWidget {
  final HeaderTypeModel headerType;

  const HeaderTypeItemDetail({Key key, this.headerType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(headerType.header),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(headerType.header,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            ),
            Text(headerType.description),
            new Divider(
              height: 10.0,
              color: Colors.blueGrey,
            ),
            Container(
              padding: const EdgeInsets.only(top: 16.0),
              child: InkWell(
                child: Text(
                  headerType.spec_title,
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                onTap: _launchUrl,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _launchUrl() async {
    final url = headerType.spec_href;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could Not Launch $url';
    }
  }
}
