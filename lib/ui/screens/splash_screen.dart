import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import './on_boarding_screen.dart';


class UrbanMarketSplashScreen extends  StatelessWidget {
	/*final SharedPreferences prefs;
	UrbanMarketSplashScreen({this.prefs});*/
	@override
	Widget build(BuildContext context){
		return new SplashScreen(
	      seconds: 15,
	      navigateAfterSeconds: new OnBoardingScreen(),
	      title: new Text(
	        'Urban Market',
	        style: new TextStyle(
	          fontSize: 20.0
	        ),
	      ),
	      image: new Image.asset('assets/logo/market_256.png'),
	      backgroundColor: Colors.white,
	      styleTextUnderTheLoader: new TextStyle(),
	      photoSize: 100.0,
	      onClick: () => print('CodAfric Engineer'),
	      loaderColor: Colors.red
	    );;
	}
}