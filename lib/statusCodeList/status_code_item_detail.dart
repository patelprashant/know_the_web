import 'package:flutter/material.dart';
import 'package:know_the_web/statusCodeList/model/statusCode.dart';
import 'package:url_launcher/url_launcher.dart';

class StatusCodeItemDetail extends StatelessWidget {
  final StatusCodeModel statusCode;

  StatusCodeItemDetail({Key key, @required this.statusCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status Code - ${statusCode.code}'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(statusCode.code + " - " + statusCode.phrase,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            ),
            Text(statusCode.description),
            new Divider(
              height: 10.0,
              color: Colors.blueGrey,
            ),
            Container(
              padding: const EdgeInsets.only(top: 16.0),
              child: InkWell(
                child: Text(
                  statusCode.spec_title,
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
    final url = statusCode.spec_href;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could Not Launch $url';
    }
  }
}
