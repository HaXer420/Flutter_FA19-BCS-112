import 'package:flutter/material.dart';
import 'package:weatherapp/utils/apifile.dart' as util;

class Climate extends StatefulWidget {
  const Climate({Key? key}) : super(key: key);

  @override
  State<Climate> createState() => _ClimateState();
}

class _ClimateState extends State<Climate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather APP'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],

      ),
      body: Stack(
        children: [
          Center(
            child: Image(
              image: AssetImage('images/umbrella.png'),
              height: 1200.0,
              width: 600.0,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.fromLTRB(0.0, 10.9, 20.9, 0.0),
            child: Text(
              'Vehari',
              style: cityStyle(),
            ),
          ),
        ],
      ),
    );
  }

  Future <Map> getWeather(String appId, String city)async{
    String apiUrl='https://api.openweathermap.org/data/2.5/weather?q=$city&appid='
    '${util.apiId}&units=imperial';
    //https://api.openweathermap.org/data/2.5/weather?q=vehari&appid=cd444af68b389fa65c3371d707a024a1&units=metric
  }
}


//citystyle

TextStyle cityStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 22.8,
    fontStyle: FontStyle.italic
  );
}