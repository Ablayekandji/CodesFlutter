import 'dart:math';

import 'package:flutter/material.dart';

class Exemple6 extends StatefulWidget {
  @override
  _Exemple6State createState() => _Exemple6State();
}

class _Exemple6State extends State<Exemple6> {
  var _couleurDeFond = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: _couleurDeFond,
      appBar: AppBar(title: Text("changement aleatoire de couleur")),
      body: Center(
        child: RaisedButton(
          child: Text("Cliquez moi !!!"),
          onPressed: () {
            setState(() {
              Random rand = Random();
              int r = rand.nextInt(255);
              int g = rand.nextInt(255);
              int b = rand.nextInt(255);
              _couleurDeFond = Color.fromRGBO(r, g, b, 1);
            });
          },
        ),
      ),
    ));
  }
}
