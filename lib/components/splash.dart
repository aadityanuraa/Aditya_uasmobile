import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sephorature_app/components/home.dart';
import 'package:sephorature_app/constant.dart';

class TampilanAwal extends StatefulWidget {
  static String routeName = "/tampilan";
  @override
  _TampilanAwalState createState() => _TampilanAwalState();
}

class _TampilanAwalState extends State<TampilanAwal> {
  @override
  void initState() {
    super.initState();
    startTampilanAwal();
  }

  startTampilanAwal() async {
    var duration = const Duration(milliseconds: 2500);
    return Timer(duration, () {
      Navigator.of(context).pushReplacementNamed(LayarBeranda.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaPrimer,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/logo.png",
            ),
          ],
        ),
      ),
    );
  }
}
