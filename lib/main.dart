import 'dart:async';

import 'package:flutter/material.dart';
import './ui/screens/splash_screen.dart';
import './ui/screens/auth_screen.dart';
import './ui/screens/welcome_screen.dart';
import './ui/screens/sign_in_screen.dart';
import './ui/screens/sign_up_screen.dart';

void main() {
  runApp(new  MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
        //'/walkthrough': (BuildContext context) => new WalkthroughScreen(),
        '/auth': (BuildContext context) => new AuthScreen(),
        '/signin': (BuildContext context) => new SignInScreen(),
        //'/signup': (BuildContext context) => new SignUpScreen(),
        //'/main': (BuildContext context) => new MainScreen(),
        '/welcome': (BuildContext context) => new WelcomeScreen(),
      },
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

class _MyAppState extends State<UrbanMarketApp> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context){
    return new UrbanMarketSplashScreen();
  }
}



