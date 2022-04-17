import 'package:flutter/material.dart';
import 'package:weatherapp/Screen02.dart';
import 'package:weatherapp/screen01.dart';
import 'screen02.dart';
import 'screen01.dart';

class Screen0 extends StatelessWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Screen0'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              RaisedButton(
                color: Colors.red,
                child: Text('Go forward S1'),
                onPressed: () {
                  Navigator.pushNamed(context, '/first');
                },
              ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: Colors.red,
                    child: Text('Go forward S1'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');

            },
          ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
