import 'dart:async';

import 'package:flutter/material.dart';

import '../widgets/custom_flat_button.dart';

class WelcomeScreen extends StatelessWidget{

	Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset('assets/logo/market_256.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, right: 15.0, left: 15.0),
            child: Text(
              "Welcome to Urban Market!",
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue[900],
                decoration: TextDecoration.none,
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                fontFamily: "OpenSans",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Buy and Sell in an Urban style.",
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 15.0,
                fontWeight: FontWeight.w300,
                fontFamily: "OpenSans",
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
            child: CustomFlatButton(
              title: "Log In",
              fontSize: 22,
              fontWeight: FontWeight.w700,
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).pushNamed("/signin");
              },
              splashColor: Colors.black12,
              borderColor: Colors.blue[900],
              borderWidth: 0,
              color: Colors.blue[900],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
            child: CustomFlatButton(
              title: "Sign Up",
              fontSize: 22,
              fontWeight: FontWeight.w700,
              textColor: Colors.black54,
              onPressed: () {
                Navigator.of(context).pushNamed("/signup");
              },
              splashColor: Colors.black12,
              borderColor: Colors.black12,
              borderWidth: 2,
            ),
          ),
        ],
      ),
    );
  }
}