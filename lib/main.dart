import 'package:flutter/material.dart';
import 'package:know_the_web/aboutPage/about_page.dart';
import 'package:know_the_web/headerTypeList/header_types_page.dart';
import 'package:know_the_web/httpMethodList/http_methods_page.dart';

import 'statusCodeList/status_codes_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Know the Web'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _selectedIndex = 0;
  final _widgetOptions = [
    StatusCodesPage(),
    HttpMethodsPage(),
    HeaderTypesPage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _widgetOptions.elementAt(_selectedIndex),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.link,
                color: Colors.blueAccent,
              ),
              title: Text(
                'Status',
                style: new TextStyle(color: Colors.blueGrey),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.http, color: Colors.blueAccent),
              title: Text(
                'Methods',
                style: new TextStyle(color: Colors.blueGrey),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.web, color: Colors.blueAccent),
              title: Text(
                'Headers',
                style: new TextStyle(color: Colors.blueGrey),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.description, color: Colors.blueAccent),
              title: Text(
                'About',
                style: new TextStyle(color: Colors.blueGrey),
              )),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
