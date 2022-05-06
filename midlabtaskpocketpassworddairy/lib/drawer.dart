import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Massab Ali"),
            accountEmail: Text("FA19-BCS-112"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1618336753974-aae8e04506aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Info"),
            subtitle: Text("only for class task"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text("Email"),
            subtitle: Text("massabiftkhar@gmail.com"),
            trailing: Icon(Icons.send),

          ),
        ],
      ),
    );
  }
}


