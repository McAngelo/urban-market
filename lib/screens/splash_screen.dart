import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import './home_screen.dart';


class UrbanMarketSplashScreen extends  StatelessWidget {
	@override
	Widget build(BuildContext context){
		return new SplashScreen(
	      seconds: 5,
	      navigateAfterSeconds: new HomeScreen(),
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