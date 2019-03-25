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
      title: 'Know the Web',
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
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 8.0, left: 16.0, right: 16.0, bottom: 8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _widgetOptions.elementAt(_selectedIndex),
            ],
          ),
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        iconSize: 40.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              backgroundColor: Colors.blue[800],
              activeIcon: Icon(Icons.link, color: Colors.white),
              icon: Icon(Icons.link, color: Colors.lightBlueAccent),
              title: Text(
                'Status',
                style: new TextStyle(color: Colors.white),
              )),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.http, color: Colors.white),
              icon: Icon(Icons.http, color: Colors.lightBlueAccent),
              title: Text(
                'Methods',
                style: new TextStyle(color: Colors.white),
              )),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.web, color: Colors.white),
              icon: Icon(Icons.web, color: Colors.lightBlueAccent),
              title: Text(
                'Headers',
                style: new TextStyle(color: Colors.white),
              )),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.description, color: Colors.white),
              icon: Icon(Icons.description, color: Colors.lightBlueAccent),
              title: Text(
                'About',
                style: new TextStyle(color: Colors.white),
              )),
        ],
        currentIndex: _selectedIndex,
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
