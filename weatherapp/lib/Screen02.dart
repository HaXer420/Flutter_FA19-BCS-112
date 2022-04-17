import 'package:flutter/material.dart';
import 'screen01.dart';

class Screen2 extends StatefulWidget {
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override

  void initState() {
    print('Init Calling');
    super.initState();
  }
  @override
  void deactivate() {
    print('deactive Calling');
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    print('build Calling');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Screen2'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          child: Text('Go back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
