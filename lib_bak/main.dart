import 'package:flutter/material.dart';
import 'home_widget.dart';
// import 'package:url_launcher/url_launcher.dart';

void main() => runApp(App());

class App extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Путь выздоровления',
     home: Home(),
   );
 }
}