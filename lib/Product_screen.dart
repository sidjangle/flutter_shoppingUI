import 'package:flutter/material.dart';
import 'package:shopping/home_screen.dart';
import 'package:shopping/widget/cartlist_widget.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = 'product_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_sharp),
            color: Colors.black,
            onPressed: () =>
                Navigator.of(context).pushNamed(HomeScreen.routeName)),
        toolbarHeight: 100,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        bottomOpacity: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Text(
            'Shopping Cart',
            style: TextStyle(color: Colors.black, fontSize: 26),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Icon(
              Icons.shopping_cart,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: CartList(),
    );
  }
}
