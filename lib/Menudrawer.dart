import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'My_Header_Drawer.dart';

class Menudrawer extends StatefulWidget {
  @override
  _HomeMenudrawer createState() => _HomeMenudrawer();
}

class _HomeMenudrawer extends State<Menudrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("menu"),
      ),
      body: Container(
        child: Center(
          child: Text("Home page"),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyHeaderList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyHeaderList() {
    return Container();
  }
}
