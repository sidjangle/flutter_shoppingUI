import 'package:flutter/material.dart';
import 'package:shopping/allroutes.dart';
import 'package:shopping/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: allRoutes(context),
    );
  }
}
