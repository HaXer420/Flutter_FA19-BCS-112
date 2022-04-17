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
          Center(
            child: Image(
              image: AssetImage('images/light_rain.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 10.9, 20.9, 0.0),
            child: updateTempWidget('Lahore'),
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

  Widget updateTempWidget(String city) {
    return FutureBuilder(
        future: getWeather(util.apiId, city == null ? util.defaultCity : city),
        builder: (BuildContext context, AsyncSnapshot<Map> snapshot) {
          //where we get all of the json data, we setup widgets etc.
          if (snapshot.hasData) {
            Map content = snapshot.requireData;
            return Container(
              margin: const EdgeInsets.fromLTRB(30.0, 250.0, 0.0, 0.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new ListTile(
                    title: new Text(
                      content['main']['temp'].toString() + " F",
                      style: new TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 49.9,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: new ListTile(
                      title: new Text(
                        "Humidity: ${content['main']['humidity'].toString()}\n"
                            "Min: ${content['main']['temp_min'].toString()} F\n"
                            "Max: ${content['main']['temp_max'].toString()} F ",
                        style: extraData(),
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            return Container();
          }
        });
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

//tempstyle
TextStyle tempStyle() {
  return TextStyle(
      color: Colors.white,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontSize: 49.9);
}

TextStyle extraData() {
  return TextStyle(
      color: Colors.white70, fontStyle: FontStyle.normal, fontSize: 17.0);
}