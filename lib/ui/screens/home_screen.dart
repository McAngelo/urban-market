import 'package:flutter/material.dart';

class HomeScreen extends  StatelessWidget {
	const HomeScreen({Key key}): super(key: key);

	@override
	Widget build(BuildContext context){

		final drawerHeader =  UserAccountsDrawerHeader(
			accountName: Text('Michael Kwame Johnson'),
			accountEmail: Text('mcangelo200@gmail.com'),
			currentAccountPicture: CircleAvatar(
				child: FlutterLogo(size: 42.0),
				backgroundColor: Colors.white
			),
			otherAccountsPictures: <Widget>[
				CircleAvatar(
					child: Text('MJ'),
					backgroundColor: Colors.orange,
				),
				CircleAvatar(
					child: Text('Mike'),
					backgroundColor: Colors.red,
				),
			]
		);

		final drawerItems = ListView(
			children: <Widget>[
				drawerHeader,
				ListTile(
					title: Text('Your Location'),
					onTap: () => Navigator.of(context).push(_NewPage(1)),
				),
				ListTile(
					title: Text('Shops'),
					onTap: () => Navigator.of(context).push(_NewPage(2)),
				),
				ListTile(
					title: Text('Deals'),
					onTap: () => Navigator.of(context).push(_NewPage(3)),
				),
				ListTile(
					title: Text('Orders'),
					onTap: () => Navigator.of(context).push(_NewPage(1)),
				),
				ListTile(
					title: Text('Account'),
					onTap: () => Navigator.of(context).push(_NewPage(1)),
				),
				ListTile(
					title: Text('Address Book'),
					onTap: () => Navigator.of(context).push(_NewPage(1)),
				),
			]
		);

		return new Scaffold(
	      	appBar: new AppBar(
	      		backgroundColor: Colors.blue[900],
	        	title: new Text('Urban Market'),
	        	automaticallyImplyLeading: true,
	        	actions: <Widget>[
		        	IconButton(
		        		icon: Icon(Icons.search),
		        		onPressed: (){},
		        	),
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
	      	drawer: Drawer(
	      		child: drawerItems,
	      	)
	    );
	}
}


class _NewPage extends MaterialPageRoute<Null> {
	_NewPage(int id) : super(builder: (BuildContext context){
		return Scaffold(
			appBar: AppBar(
				title: Text('Page $id'),
				elevation: 1.0
			),
			body: Center(
				child: Text('Page $id')
			),
		);
	});
}
