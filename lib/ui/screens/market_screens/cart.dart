import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);

  //final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Container(
	    width: double.infinity,
        height: double.infinity,
        child: SafeArea(
            child: Card(
	          	color: Colors.white,
	          	// The elevation determines shade.
	          	elevation: 10.0,
	          	child: Center(child: Icon(Icons.shopping_cart, size: 265.0, color: Colors.blue)),
	        ),
        ),
    );
  }
}