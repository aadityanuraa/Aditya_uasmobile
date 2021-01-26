import 'package:flutter/widgets.dart';
import 'package:sephorature_app/components/home.dart';
import 'package:sephorature_app/components/splash.dart';

final Map<String, WidgetBuilder> routes = {
  TampilanAwal.routeName: (context) => TampilanAwal(),
  LayarBeranda.routeName: (context) => LayarBeranda(),
};
