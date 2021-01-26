import 'package:flutter/material.dart';
import 'package:sephorature_app/constant.dart';

class ProductDetail extends StatefulWidget {
  final prodDetailName, prodDetailPict, prodDetailPric;
  ProductDetail(
      {this.prodDetailName, this.prodDetailPict, this.prodDetailPric});
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(widget.prodDetailName),
        backgroundColor: warnaPrimer,
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 250.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  widget.prodDetailPict,
                  fit: BoxFit.cover,
                ),
              ),
              footer: new Container(
                color: warnaPrimer.withOpacity(0.7),
                child: ListTile(
                  leading: new Text(
                    widget.prodDetailName,
                    style: TextStyle(
                        color: Color(0xFFFFFF00),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "\$${widget.prodDetailPric}",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return new AlertDialog(
                          title: new Text("Warna"),
                          content: new Text("Pilih Warna"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("Tutup"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white70,
                textColor: warnaText,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Warna"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text("Qty"),
                            content: new Text("Berapa Banyak"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Tutup"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white70,
                  textColor: warnaText,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: warnaPrimer,
                textColor: Color(0xFFFFFF00),
                elevation: 0.2,
                child: new Text(
                  "Masukkan Keranjang",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {},
                color: Color(0xFFFFFF00),
                textColor: warnaPrimer,
                elevation: 0.2,
                child: new Text(
                  "Beli Sekarang",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Produk Detail"),
            contentPadding: EdgeInsets.all(10.0),
            subtitle: new Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Produk Name : ",
                  style: TextStyle(color: warnaText),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.prodDetailName),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Produk Brand : ",
                  style: TextStyle(color: warnaText),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("Tanpa Merk"),
              ),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Produk Condition : ",
                  style: TextStyle(color: warnaText),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("New"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
