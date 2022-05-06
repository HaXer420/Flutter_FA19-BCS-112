import 'package:flutter/material.dart';
import 'simple_password_generator.dart';
import 'package:midlabtaskpocketpassworddairy/homepage.dart';

class simplepass extends StatefulWidget {
  @override
  _simplepassState createState() => _simplepassState();
}

class _simplepassState extends State<simplepass> {
  bool _isWithLetters = true;
  bool _isWithUppercase = false;
  bool _isWithNumbers = false;
  double _numberCharPassword = 8;
  String newPassword = '';
  Color _color = Colors.blue;
  String isOk = '';
  TextEditingController _passwordHint = TextEditingController();
  TextEditingController _passwordLength = TextEditingController();
  final password = RandomPasswordGenerator();
  @override
  void initState() {
    super.initState();
  }

  checkBox(String name, Function onTap, bool value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(name), 
        Checkbox(value: value, onChanged: onTap),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text('Simple Password By Massab'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LandingPage(),));
          },
          child: Icon(Icons.home),
        ),
        body: Center(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                checkBox('Upper Case Character', (bool value) {
                  _isWithUppercase = value;
                  setState(() {});
                }, _isWithUppercase),
                checkBox('Lower Case Character', (bool value) {
                  _isWithLetters = value;
                  setState(() {});
                }, _isWithLetters)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                checkBox('Numbers', (bool value) {
                  _isWithNumbers = value;
                  setState(() {});
                }, _isWithNumbers)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _passwordHint,
                decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(),
                  ),
                  filled: true,
                  fillColor: Colors.grey[300],
                  labelText: 'Enter Hint',
                  labelStyle: TextStyle(color: Colors.purple),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(15.0),
            //   child: TextField(
            //     controller: _passwordLength,
            //     decoration: InputDecoration(
            //       border: new OutlineInputBorder(
            //         borderRadius: new BorderRadius.circular(25.0),
            //         borderSide: new BorderSide(),
            //       ),
            //       filled: true,
            //       fillColor: Colors.grey[300],
            //       labelText: 'Enter Length',
            //       labelStyle: TextStyle(color: Colors.purple),
            //     ),
            //     keyboardType: TextInputType.number,
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
                onPressed: () {
                  if (_passwordLength.text.trim().isNotEmpty)
                    _numberCharPassword =
                        double.parse(_passwordLength.text.trim());

                  newPassword = password.randomPassword(
                      letters: _isWithLetters,
                      numbers: _isWithNumbers,
                      passwordLength: _numberCharPassword,

                      uppercase: _isWithUppercase);

                  print(newPassword);
                  // double passwordstrength =
                  //     password.checkPassword(password: newPassword);
                  // if (passwordstrength < 0.3) {
                     _color = Colors.red;
                    isOk = 'Password:';
                  // } else if (passwordstrength < 0.7) {
                  //   _color = Colors.blue;
                  //   isOk = 'This password is Good';
                  // } else {
                  //   _color = Colors.green;
                  //   isOk = 'This passsword is Strong';
                  // }

                  setState(() {});
                },
                child: Container(
                  color: Colors.purple,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Create Password',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
            ),
            SizedBox(
              height: 10,
            ),
            if (newPassword.isNotEmpty && newPassword != null)
              Center(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    isOk,
                    style: TextStyle(color: _color, fontSize: 25),
                  ),
                ),
              )),
            if (newPassword.isNotEmpty && newPassword != null)
              Center(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    newPassword,
                    style: TextStyle(color: _color, fontSize: 25),
                  ),
                ),
              ))
          ],
        )),
      ),
    );
  }
}
