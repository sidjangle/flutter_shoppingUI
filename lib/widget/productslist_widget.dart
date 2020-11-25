import 'package:flutter/material.dart';
import 'package:shopping/Product_screen.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  Widget stylebuilder({BuildContext context, String image}) {
    return Expanded(
        child: Column(children: [
      Container(
        child: InkWell(
          onTap: () =>
              {Navigator.of(context).pushNamed(ProductScreen.routeName)},
        ),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(40)),
        width: double.infinity,
        height: 200,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('\$ 2000'),
      ),
    ]));
  }

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      stylebuilder(context: context, image: 'images/c1.png'),
      stylebuilder(context: context, image: 'images/c2.png'),
    ]);
  }
}
