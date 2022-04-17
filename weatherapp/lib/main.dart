import 'package:flutter/material.dart';
import 'package:weatherapp/Screen00.dart';
import 'package:weatherapp/Screen02.dart';
import 'package:weatherapp/screen01.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => Screen0(),
        '/first': (context) => Screen1(),
        '/seccond': (context) => Screen2(),
      },
    );
  }
}