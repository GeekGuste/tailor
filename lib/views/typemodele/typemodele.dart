import 'package:flutter/material.dart';

class TypeModelPage extends StatefulWidget {
  static String tag = 'type-model-page';
  @override
  _TypeModelPageState createState() => new _TypeModelPageState();
}

class _TypeModelPageState extends State<TypeModelPage> {
  @override
  Widget build(BuildContext context) {

    final libelle = new ListTile(
      leading: const Icon(Icons.art_track),
      title: new TextField(
        decoration: new InputDecoration(
          hintText: "Libellé",
        ),
      ),
    );


    final scafold = Scaffold(
      appBar: new AppBar(
        title: new Text("Enregistrement de type de model"),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.save), onPressed: () {})
        ],
      ),
      body: new Column(
        children: <Widget>[
            libelle,
            new Text('Image'),
          ]
    )
    );

    return scafold;
  }
}