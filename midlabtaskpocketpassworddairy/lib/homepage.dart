import 'package:flutter/material.dart';
import 'drawer.dart';
import 'dart:async';
import 'bgimage.dart';
import 'strongpassword/strong.dart';
import 'simplepassword/simple.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 0),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LandingPage())));
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('asset/img.png'), height: 300),
            Text("FA19-BCS-112", style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(color: Colors.purple,)
          ],
        ));
  }
}



class LandingPage extends StatefulWidget {



  @override
  State<LandingPage> createState() => _LandingPageState();
}


class _LandingPageState extends State<LandingPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text("Home"),
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

        drawer: MyDrawer(),
        body: Stack(
          fit: StackFit.expand,
          children: [
            bgImage(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: [
                      Form(child: Row(
                        children: [

                          Expanded(
                             child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 50,
                              width: 150,
                              child: FlatButton(
                                color: Colors.purple,
                                textColor: Colors.white,
                                child: new Text(
                                  "Simple Password",
                                  style: TextStyle(fontSize: 25),
                                ),
                                onPressed: () {

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => simplepass(),));
                                },


                              ),
                            ),
                          ),
                          ),

                        ],
                      ),

                      ),


                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(82.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: [
                      Form(child: Row(
                        children: [

                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                width: 150,
                                child: FlatButton(
                                  color: Colors.purple,
                                  textColor: Colors.white,
                                  child: new Text(
                                    "Strong Password",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  onPressed: () {

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => strongpass(),));
                                  },


                                ),
                              ),
                            ),
                          ),

                        ],
                      ),

                      ),


                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(156.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: [
                      Form(child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 50,
                                width: 150,
                                child: FlatButton(
                                  color: Colors.purple,
                                  textColor: Colors.white,
                                  child: new Text(
                                    "View All",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  onPressed: () {

                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) => contactus(),));
                                  },


                                ),
                              ),
                            ),
                          ),

                        ],
                      ),

                      ),


                    ],
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}


