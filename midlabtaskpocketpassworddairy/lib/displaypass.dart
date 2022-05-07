import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


class DisplayPasswords extends StatefulWidget {
  const DisplayPasswords({key}) : super(key: key);

  @override
  State<DisplayPasswords> createState() => _DisplayPasswordsState();
}

class _DisplayPasswordsState extends State<DisplayPasswords> {

  final databaseRef = FirebaseDatabase.instance.ref().child("Simple Passwords");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FirebaseAnimatedList(query: databaseRef,
          itemBuilder: (BuildContext context,DataSnapshot snapshot,
            Animation<double> animation,int index) {
          var x = snapshot.child('Password');
          print (x);
          return ListTile(
            subtitle: Text(snapshot.child('Password').toString()
            ),
          );
        },
        ),
      ),
    );
  }
}
