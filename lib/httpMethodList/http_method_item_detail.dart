import 'package:flutter/material.dart';
import 'package:know_the_web/httpMethodList/model/httpMethod.dart';
import 'package:url_launcher/url_launcher.dart';

class HttpMethodItemDetail extends StatelessWidget {
  final HttpMethodModel httpMethod;

  const HttpMethodItemDetail({Key key, this.httpMethod}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http Method - ${httpMethod.method}'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(httpMethod.method,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            ),
            Text(httpMethod.description),
            new Divider(
              height: 10.0,
              color: Colors.blueGrey,
            ),
            Container(
              padding: const EdgeInsets.only(top: 16.0),
              child: InkWell(
                child: Text(
                  httpMethod.spec_title,
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
    final url = httpMethod.spec_href;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could Not Launch $url';
    }
  }
}
