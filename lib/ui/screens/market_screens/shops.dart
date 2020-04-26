import 'package:flutter/material.dart';

class ShopsScreen extends StatelessWidget {
  const ShopsScreen({Key key}) : super(key: key);

  //final Choice choice;

  @override
  Widget build(BuildContext context) {
    const listTiles = <Widget>[
      ListTile(
        title: Text('Tile 0: basic'),
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.face),
        title: Text('Tile 1: with leading/trailing widgets'),
        trailing: Icon(Icons.tag_faces),
      ),
      Divider(),
      ListTile(
        title: Text('Tile 2 title'),
        subtitle: Text('subtitle of tile 2'),
      ),
      Divider(),
      ListTile(
        title: Text('Tile 3: 3 lines'),
        isThreeLine: true,
        subtitle: Text('subtitle of tile 3'),
      ),
      Divider(),
      ListTile(
        title: Text('Tile 4: dense'),
        dense: true,
      ),
    ];
    // Directly returning a list of widgets is not common practice.
    // People usually use ListView.builder, c.f. "ListView.builder" example.
    // Here we mainly demostrate ListTile.
    //return ;

    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Container(
	      width: double.infinity,
        //height: double.infinity,
        
        child: SafeArea(
            child: Container(
                height: 100.0,
                child: ListView(children: listTiles),
              ),
          
        ),
    );
  }
}