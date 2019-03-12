import 'package:flutter/material.dart';
import 'package:tailor/views/typemodele/typemodele.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {

    final typeModelButton = new ButtonTheme(
      child: RaisedButton(
        child: const Text('Gestion des types de models'),
        padding: EdgeInsets.all(12),
        color: Theme.of(context).accentColor,
        elevation: 4.0,
        splashColor: Colors.blueGrey,
        onPressed: () {
          // Perform some action
          Navigator.of(context).pushNamed(TypeModelPage.tag);
        },
      ),
      minWidth: 250,
    );


    final modelButton = new ButtonTheme(
      child: RaisedButton(
        child: const Text('Gestion des models'),
        padding: EdgeInsets.all(12),
        color: Theme.of(context).accentColor,
        elevation: 4.0,
        splashColor: Colors.blueGrey,
        onPressed: () {
          // Perform some action
        },
      ),
      minWidth: 250,
    );

    return Scaffold(
          appBar:  new AppBar(
            title: new Text("Menu"),
            actions: <Widget>[
              new IconButton(icon: const Icon(Icons.save), onPressed: () {})
            ],
          ),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  typeModelButton,
                  modelButton,
                ]
            ),
          )
      ),
    );
  }
}
