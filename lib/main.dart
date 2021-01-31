import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes/screens/Create.dart';
import 'package:notes/screens/Home.dart';
import 'package:notes/screens/Search.dart';

void main() {
  runApp(
    new MaterialApp(debugShowCheckedModeBanner: false,
    home: MyApp(),
    theme: ThemeData(fontFamily: 'arabic'),
    routes: <String, WidgetBuilder>{
      '/Home': (BuildContext con) => new Home(),
      '/Create': (BuildContext con) => new Create(),
      '/Search': (BuildContext con) => new Search(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xFF252525),
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ));
    return Home();
  }
}
