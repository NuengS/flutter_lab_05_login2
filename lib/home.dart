import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginForm.dart';

class Home extends StatelessWidget {
  //Add Logout Button, Function and variable
  final String email;
  final String password;

  Home(this.email, this.password);

  void logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("user", null);
    prefs.setString("pwd", null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        title: Text("ComSci Project"),
      ),
      body: Container(
        color: Colors.blueGrey[200],
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Text(
              "Your email: $email\n Your password: $password", //Place Code Here
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            RaisedButton(
              onPressed: logout,
              child: Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
