import 'package:flutter/material.dart';
import 'package:sephorature_app/components/cart_list.dart';
import 'package:sephorature_app/constant.dart';

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            "Keranjang Saya",
            textAlign: TextAlign.center,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.search,
              ),
              tooltip: "",
              onPressed: () {}),
        ],
      ),
      body: new CartProd(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total : "),
                subtitle: new Text("\$230"),
              ),
            ),
            Expanded(
              child: new MaterialButton(
                onPressed: () {},
                child: new Text(
                  "Check Out",
                  style: TextStyle(color: Colors.white),
                ),
                color: warnaPrimer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
