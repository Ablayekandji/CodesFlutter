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
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/profile.jpg',
                    fit: BoxFit.cover,
                    width: 50, // x2 (twice) the radius of CircleAvatar
                    height: 50, // x2 (twice) the radius of CircleAvatar
                  ),
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              // tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
            );
          },
        ),
        backgroundColor: Colors.green,
        title: Text("menu"),
      ),
      body: Container(
        child: Center(
          child: Text("Home page"),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(14)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10, top: 10),
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/images/profile.jpg'),
                          )),
                    ),
                    Text(
                      "Niania nonio",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Accueil"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text("profile"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.sailing),
              title: Text("Vente"),
              onTap: () {},
            ),
            Padding(padding: EdgeInsets.all(56)),
            ListTile(
              leading: Icon(Icons.logout_rounded),
              title: Text("Se deconnecter"),
              onTap: () {},
            ),
          ],
        ),
        // child: SingleChildScrollView(
        //   child: Container(
        //     child: Column(
        //       children: [
        //         MyHeaderDrawer(),
        //         MyHeaderList(),
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }

  Widget MyHeaderList() {
    return Container();
  }
}
