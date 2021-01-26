import 'package:flutter/material.dart';

import 'package:sephorature_app/constant.dart';
import 'package:sephorature_app/page/shopping_cart.dart';

import 'body.dart';
import 'main_drawer.dart';

class LayarBeranda extends StatefulWidget {
  static String routeName = "/layarBeranda";
  @override
  _LayarBerandaState createState() => _LayarBerandaState();
}

class _LayarBerandaState extends State<LayarBeranda> {
  int indexnya = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            "SEPHORATURE",
            textAlign: TextAlign.center,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.add_shopping_cart),
              tooltip: "My Cart",
              onPressed: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => new MyCart()));
              }),
        ],
      ),
      drawer: MainDrawer(),
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexnya,
        backgroundColor: warnaPrimer,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            // ignore: deprecated_member_use
            title: Text("Home"),
            backgroundColor: warnaPrimer,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.videocam,
              color: Colors.white,
            ),
            // ignore: deprecated_member_use
            title: Text("Live"),
            backgroundColor: warnaPrimer,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            // ignore: deprecated_member_use
            title: Text("Notifikasi"),
            backgroundColor: warnaPrimer,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
            // ignore: deprecated_member_use
            title: Text("Saya"),
            backgroundColor: warnaPrimer,
          ),
        ],
        onTap: (index) {
          setState(() {
            indexnya = index;
          });
        },
      ),
    );
  }
}
