import 'package:flutter/material.dart';
import 'package:weatherapp/utils/apifile.dart' as util;
import 'package:http/http.dart' as http;
import 'dart:convert';

class Climate extends StatefulWidget {

  @override
  State<Climate> createState() => _ClimateState();
}

class _ClimateState extends State<Climate> {
  void showStuff() async {
    Map data = await getWeather(util.apiId, util.defaultCity);
    print(data.toString());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather APP'),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => showStuff(),
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

    http.Response response = await http.get(Uri.parse(apiUrl));

    return json.decode(response.body);
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