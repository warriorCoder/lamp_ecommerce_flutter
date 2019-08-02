import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details/details.dart';
import 'global.dart';
import 'home.dart';

//This app was inspired from
//https://dribbble.com/shots/6785635-Lampster-app/attachments

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: darkBg,
        accentColor: accent,
        fontFamily: 'Raleway',
      ),
      home: Home(),
      routes: {
        '/details': (context) => Details(),
      },
    );
  }
}
