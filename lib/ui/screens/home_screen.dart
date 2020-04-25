import 'package:flutter/material.dart';

class HomeScreen extends  StatelessWidget {
	@override
	Widget build(BuildContext context){
		return new Scaffold(
	      appBar: new AppBar(
	      	backgroundColor: Colors.blue[900],
	      	leading: Icon(Icons.home),
	        title: new Text('Urban Market'),
	        //automaticallyImplyLeading: false,
	        actions: <Widget>[
	        	IconButton(
	        		icon: Icon(Icons.directions_bike),
	        		onPressed: (){},
	        	),
	        	IconButton(
	        		icon: Icon(Icons.directions_bus),
	        		onPressed: (){},
	        	),
	        	PopupMenuButton(
	        		itemBuilder: (BuildContext context){
	        			return [
	        				PopupMenuItem(child: Text('Boat')),
	        				PopupMenuItem(child: Text('Train'))
	        			];
	        		}
	        	)
	        ],
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
	}
}