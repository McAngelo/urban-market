import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import './welcome_screen.dart';
import './home_screen.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Urban Market'),
          automaticallyImplyLeading: false
        ),
        body: new Center(
          child: new Text(
            'Done!',
            style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0
            ),
          ),
        ),
      );
    /*return new StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return new Container(
            color: Colors.white,
          );
        } else {
          if (snapshot.hasData) {
            return new HomeScreen(
              firebaseUser: snapshot.data,
            );
          } else {
            return WelcomeScreen();
          }
        }
      },
    );*/
  }
}
