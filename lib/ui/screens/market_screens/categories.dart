import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  //final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Container(
	      width: double.infinity,
        height: double.infinity,
        child: Card(
              color: Colors.white,
              // The elevation determines shade.
              elevation: 10.0,
              child: Container(
                height: 100.0,
                child: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text('Card 1'),
                      ),
                    ],
                ),
              ),
          ),
    );
  }
}