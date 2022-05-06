import 'package:flutter/material.dart';
import 'main.dart';
import 'drawer.dart';
import 'dart:async';
import 'bgimage.dart';


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
        Duration(seconds: 1),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('asset/daddy.jpg'), height: 300),
            Text("FA19-BCS-112", style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            CircularProgressIndicator(color: Colors.purple,)
          ],
        ));
  }
}



class LoginPage extends StatefulWidget {



  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {


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
                  builder: (context) => LoginPage(),));
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
                      //   Expanded(
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(50.0),
                      //       child: Container(
                      //       height: 50,
                      //       width: 150,
                      //       child: FlatButton(
                      //         color: Colors.purple,
                      //         textColor: Colors.white,
                      //         child: new Text(
                      //           "Simple Password",
                      //           style: TextStyle(fontSize: 25),
                      //         ),
                      //         onPressed: () {
                      //
                      //           // Navigator.push(
                      //           //     context,
                      //           //     MaterialPageRoute(
                      //           //       builder: (context) => QuizApp(),));
                      //         },
                      //
                      //
                      // ),
                      //         ),
                      //     ),
                      //   ),
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
            Padding(
              padding: const EdgeInsets.all(82.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: [
                      Form(child: Row(
                        children: [
                          //   Expanded(
                          //     child: Padding(
                          //       padding: const EdgeInsets.all(50.0),
                          //       child: Container(
                          //       height: 50,
                          //       width: 150,
                          //       child: FlatButton(
                          //         color: Colors.purple,
                          //         textColor: Colors.white,
                          //         child: new Text(
                          //           "Simple Password",
                          //           style: TextStyle(fontSize: 25),
                          //         ),
                          //         onPressed: () {
                          //
                          //           // Navigator.push(
                          //           //     context,
                          //           //     MaterialPageRoute(
                          //           //       builder: (context) => QuizApp(),));
                          //         },
                          //
                          //
                          // ),
                          //         ),
                          //     ),
                          //   ),
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


