import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key key}) : super(key: key);

  //final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Container(
	      width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
        	image: DecorationImage(
            	image: AssetImage('assets/images/home_background.jpg'),
            	fit: BoxFit.cover,
          	),
        ),
        child: SafeArea(
            child: Card(
	          	color: Colors.white,
	          	// The elevation determines shade.
	          	elevation: 10.0,
	          	child: Container(
	            	height: 50.0,
	            	child: Row(
	              		children: <Widget>[
	                		Expanded(
	                  			child: Text('Card 1'),
	                		),
	              		],
	            	),
	          	),
	        ),
        ),
    );
  }
}