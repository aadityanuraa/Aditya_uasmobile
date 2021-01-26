import 'package:flutter/material.dart';
import 'package:sephorature_app/constant.dart';

class CartProd extends StatefulWidget {
  @override
  _CartProdState createState() => _CartProdState();
}

class _CartProdState extends State<CartProd> {
  var productCart = [
    {
      "gambar": "assets/images/2.jpg",
      "name": "Tas",
      "harga": 10,
      "warna": "White",
      "quantity": 1,
    },
    {
      "gambar": "assets/images/7.png",
      "name": "Kaos Polos",
      "harga": 10,
      "warna": "Pink",
      "quantity": 1
    },
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: productCart.length,
      itemBuilder: (context, index) {
        return SingleCartProd(
          cartDetailName: productCart[index]["name"],
          cartDetailPict: productCart[index]["gambar"],
          cartDetailPric: productCart[index]["harga"],
          cartDetailQty: productCart[index]["quantity"],
          cartDetailWarna: productCart[index]["warna"],
        );
      },
    );
  }
}

class SingleCartProd extends StatelessWidget {
  final cartDetailName,
      cartDetailPict,
      cartDetailPric,
      cartDetailWarna,
      cartDetailQty;
  SingleCartProd(
      {this.cartDetailName,
      this.cartDetailPict,
      this.cartDetailPric,
      this.cartDetailQty,
      this.cartDetailWarna});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(
          cartDetailPict,
          width: 80.0,
          height: 80.0,
        ),
        title: new Text(cartDetailName),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: new Text("Warna : "),
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: new Text(
                    cartDetailWarna,
                    style: TextStyle(color: warnaPrimer),
                  ),
                ),
                new Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0))
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                // ignore: unnecessary_brace_in_string_interps
                " \$ ${cartDetailPric}",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: warnaPrimer),
              ),
            ),
          ],
        ),
        trailing: new Container(
          width: 90,
          child: Row(
            children: <Widget>[
              Container(
                child: IconButton(
                    icon: Icon(Icons.arrow_left),
                    alignment: Alignment.center,
                    onPressed: () {}),
                width: 30,
              ),
              Container(
                width: 30,
                child: Center(
                  child: new Text(
                    "$cartDetailQty",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                child: IconButton(
                    icon: Icon(Icons.arrow_right),
                    alignment: Alignment.center,
                    onPressed: () {}),
                width: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
