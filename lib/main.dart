import 'dart:async';

import 'package:flutter/material.dart';
import './screens/splash_screen.dart';

void main() {
  runApp(new  MaterialApp(
    theme: new ThemeData(
      primarySwatch: Colors.green,
    ),
    home: new UrbanMarketApp(),
  ));
}

class UrbanMarketApp extends  StatefulWidget {
  @override
  _MyAppState createState() => new  _MyAppState();
}

class _MyAppState extends State<UrbanMarketApp>  {
  @override
  Widget build(BuildContext context){
    return new UrbanMarketSplashScreen();
  }
}



