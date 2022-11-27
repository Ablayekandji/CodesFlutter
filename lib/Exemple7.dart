import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PremierRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Ouvrir la page'),
          onPressed: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondRoute()));
          }),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Retourner"),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }
}
