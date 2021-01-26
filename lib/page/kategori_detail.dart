import 'package:flutter/material.dart';

class KategoriDetail extends StatefulWidget {
  final kategoriName;
  final kategoriGambar;
  KategoriDetail({
    this.kategoriName,
    this.kategoriGambar,
  });
  @override
  _KategoriDetailState createState() => _KategoriDetailState();
}

class _KategoriDetailState extends State<KategoriDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.kategoriName),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                      height: 1000,
                      child: Text(
                        "",
                        style: TextStyle(fontSize: 50),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
