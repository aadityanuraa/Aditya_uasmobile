import 'package:flutter/material.dart';
import 'package:sephorature_app/route.dart';
import 'package:sephorature_app/thema.dart';

import 'components/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sephorature',
      theme: background(),
      initialRoute: TampilanAwal.routeName,
      routes: routes,
    );
  }
}

