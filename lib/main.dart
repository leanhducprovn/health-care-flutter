// @dart=2.9
import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

MaterialColor swatchify(MaterialColor color, int value) {
  return MaterialColor(color[value].hashCode, <int, Color>{
    50: color[value],
    100: color[value],
    200: color[value],
    300: color[value],
    400: color[value],
    500: color[value],
    600: color[value],
    700: color[value],
    800: color[value],
    900: color[value],
  });
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Care',
      theme: ThemeData(
        primarySwatch: swatchify(Colors.pink, 300),
        fontFamily: "Arial",
        textTheme: TextTheme(
          button: TextStyle(color: Colors.white, fontSize: 18.0),
          subtitle1: TextStyle(color: Colors.red)
        )
      ),
      home: Home(),
    );
  }
}
