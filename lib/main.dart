import 'package:flutter/material.dart';

void main() {
  runApp(PageAccueil());
}

class PageAccueil extends StatefulWidget {
  @override
  __pageAccueilState createState() => __pageAccueilState();
}

class __pageAccueilState extends State<PageAccueil> {
  int resultat = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Page Accueil",
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "votre vote ?",
                style: TextStyle(fontSize: 30, color: Colors.deepOrangeAccent),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      compter(1);
                    },
                    icon: Icon(Icons.thumb_up),
                    iconSize: 50,
                  ),
                  IconButton(
                    onPressed: () {
                      compter(-1);
                    },
                    icon: Icon(Icons.thumb_down),
                    iconSize: 50,
                  )
                ],
              ),
              Text(
                "Resultat: $resultat",
                style: TextStyle(fontSize: 25, color: Colors.deepOrangeAccent),
              )
            ],
          ),
        ),
      ),
    );
  }

  compter(int i) {
    setState(() {
      i == 1 ? resultat = resultat + 1 : resultat = resultat - 1;
    });
  }
}
