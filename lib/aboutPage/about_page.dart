import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
        flex: 1,
        child: Column(
          children: <Widget>[
            new Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'About the App',
                style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            new Divider(
              height: 10.0,
              color: Colors.blueGrey,
            ),
            Text(
                'This app is providing information about various HTTP status codes, methods and headers, all summarized and linking to their specification.'),
            Text(
                '\nThis app is fully designed and developed for learning purpose only.\n'),
            new Divider(
              height: 5.0,
              color: Colors.blueGrey,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: new Column(
                children: <Widget>[
                  Text(
                    'HTTP Status Codes',
                    style: new TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                      'HTTP status codes are standard response codes given by web site servers on the internet. The codes help identify the cause of the problem when a web page or other resource does not load properly. The term HTTP status code is actually the common term for the HTTP status line that includes both the HTTP status code and the HTTP reason phrase.\n'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: new Column(
                children: <Widget>[
                  Text(
                    'HTTP Methods',
                    style: new TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                      'HTTP defines a set of request methods to indicate the desired action to be performed for a given resource. Although they can also be nouns, these request methods are sometimes referred as HTTP verbs.\n'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: new Column(
                children: <Widget>[
                  Text(
                    'HTTP Headers',
                    style: new TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                      'HTTP headers allow the client and the server to pass additional information with the request or the response. An HTTP header consists of its case-insensitive name followed by a colon \':\', then by its value (without line breaks). Leading white space before the value is ignored.\n'),
                ],
              ),
            ),
            new Divider(
              height: 10.0,
              color: Colors.blueGrey,
            ),
          ],
        ));
  }
}
