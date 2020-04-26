import 'dart:core';
import 'package:flutter/material.dart';
import './market_screens/account.dart';
import './market_screens/address_book.dart';
import './market_screens/cart.dart';
import './market_screens/categories.dart';
import './market_screens/location.dart';
import './market_screens/orders.dart';
import './market_screens/settings.dart';
import './market_screens/shops.dart';

class HomeScreen extends StatefulWidget {
	const HomeScreen({Key key }): super(key: key);

	@override
	_HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
	int _currentTabIndex = 0;

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
					leading: Icon(Icons.location_on),
					title: Text('Your Location'),
					onTap: () => Navigator.of(context).push(_NewPage(1)),
				),
				ListTile(
					leading: Icon(Icons.store),
					title: Text('Shops'),
					onTap: () => Navigator.of(context).push(_NewPage(2)),
				),
				ListTile(
					leading: Icon(Icons.thumbs_up_down),
					title: Text('Deals'),
					onTap: () => Navigator.of(context).push(_NewPage(3)),
				),
				ListTile(
					leading: Icon(Icons.list),
					title: Text('Orders'),
					onTap: () => Navigator.of(context).push(_NewPage(4)),
				),
				ListTile(
					leading: Icon(Icons.account_circle),
					title: Text('Account'),
					onTap: () => Navigator.of(context).push(_NewPage(5)),
				),
				ListTile(
					leading: Icon(Icons.library_books),
					title: Text('Address Book'),
					onTap: () => Navigator.of(context).push(_NewPage(6)),
				),
				ListTile(
					leading: Icon(Icons.settings_applications),
					title: Text('Settings'),
					onTap: () => Navigator.of(context).push(_NewPage(7)),
				),
			]
		);

		final _kTabPages = <Widget>[
			CategoriesScreen(),
			ShopsScreen(),
			CartScreen(),
			AccountScreen(),
	    ];

	    final _kBottomNavBarItems = <BottomNavigationBarItem>[
	    	BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('Categories')),
	    	BottomNavigationBarItem(icon: Icon(Icons.store), title: Text('Shops')),
	    	BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), title: Text('Cart')),
	    	BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('Account')),
	    ];

	    assert(_kTabPages.length == _kBottomNavBarItems.length);

	    final bottomNavBar = BottomNavigationBar (
	    	items: _kBottomNavBarItems,
	    	currentIndex: _currentTabIndex,
	    	type: BottomNavigationBarType.fixed,
	    	onTap: (int index){
	    		setState((){
	    			_currentTabIndex = index;
	    		});
	    	}
	    );

		return new Scaffold(
	      	appBar: new AppBar(
	      		//backgroundColor: Colors.blue[900],
	      		backgroundColor: Colors.transparent,
        		elevation: 0.0,
	        	title: new Text('Urban Market'),
	        	automaticallyImplyLeading: true,
	        	actions: <Widget>[
		        	IconButton(
		        		icon: Icon(Icons.search),
		        		onPressed: (){},
		        	),
	        	],
	      	),
	      	extendBodyBehindAppBar: true,
	      	body: _kTabPages[this._currentTabIndex],
	      	drawer: Drawer(
	      		child: drawerItems,
	      	),
	      	bottomNavigationBar: bottomNavBar,
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

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}