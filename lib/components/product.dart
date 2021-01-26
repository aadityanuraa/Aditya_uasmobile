import 'package:flutter/material.dart';
import 'package:sephorature_app/constant.dart';
import 'package:sephorature_app/page/productDetail.dart';

class IsiProduct extends StatefulWidget {
  @override
  _IsiProductState createState() => _IsiProductState();
}

class _IsiProductState extends State<IsiProduct> {
  List<Container> daftarProduct = new List();
  var isiProduct = [
    {"gambar": "assets/images/1.jpg", "name": "Tas", "harga": 10},
    {"gambar": "assets/images/9.jpg", "name": "Celana", "harga": 10},
    {"gambar": "assets/images/11.jpg", "name": "Dasi", "harga": 40},
    {
      "gambar": "assets/images/7.jpg",
      "name": "Kaos Polos",
      "harga": 40
    },
    {"gambar": "assets/images/12.jpg", "name": "Topi", "harga": 50},
    {"gambar": "assets/images/6.png", "name": "Baju Kaos", "harga": 40},
    {"gambar": "assets/images/14.jpg", "name": "Sepatu", "harga": 30},
    {
      "gambar": "assets/images/5.jpg",
      "name": "Tas",
      "harga": 10
    },
    {"gambar": "assets/images/23.jpg", "name": "Dasi", "harga": 40},
    {"gambar": "assets/images/27.jpg", "name": "Tas", "harga": 10},
    {"gambar": "assets/images/28.jpg", "name": "Celana", "harga": 20},
    {
      "gambar": "assets/images/8.jpg",
      "name": "Celana",
      "harga": 20
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new GridView.builder(
      itemCount: isiProduct.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return ProductName(
          prodName: isiProduct[index]['name'],
          prodPict: isiProduct[index]['gambar'],
          prodPric: isiProduct[index]['harga'],
        );
      },
    );
  }
}

class ProductName extends StatelessWidget {
  ProductName({this.prodName, this.prodPict, this.prodPric});
  final prodName, prodPict, prodPric;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: new Text("hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetail(
                      prodDetailName: prodName,
                      prodDetailPict: prodPict,
                      prodDetailPric: prodPric,
                    ))),
            child: GridTile(
              child: Image.asset(
                prodPict,
                fit: BoxFit.cover,
              ),
              footer: Container(
                color: warnaPrimer,
                child: ListTile(
                  leading: Text(
                    prodName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xFFFFFF00)),
                  ),
                  title: Text(
                    "\$$prodPric",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
