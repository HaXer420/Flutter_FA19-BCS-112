import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),

    );
  }
}