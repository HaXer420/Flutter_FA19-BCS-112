import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator by Massab'),
      ),
      body: Center(
        child: Text('Body'),
      ),

    );
  }
}