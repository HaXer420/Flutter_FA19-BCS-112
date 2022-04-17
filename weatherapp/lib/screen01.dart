import 'package:flutter/material.dart';
import 'package:weatherapp/Screen02.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.red,
          child: Text('Go forward'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screen2()),
            );
          },
        ),
      ),
    );
  }
}
