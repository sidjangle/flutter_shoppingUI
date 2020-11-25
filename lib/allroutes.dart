import 'package:flutter/cupertino.dart';
import 'package:shopping/Product_screen.dart';
import 'package:shopping/home_screen.dart';

dynamic allRoutes(BuildContext context) {
  return {
    HomeScreen.routeName: (context) => HomeScreen(),
    ProductScreen.routeName: (context) => ProductScreen()
  };
}
