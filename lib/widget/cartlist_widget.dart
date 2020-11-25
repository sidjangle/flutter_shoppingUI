import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _stylebuilder(image: 'images/small.png'),
          _stylebuilder(image: 'images/small1.png'),
          _stylebuilder(image: 'images/small.png'),
          _stylebuilder(image: 'images/small.png'),
        ],
      ),
      bottomNavigationBar: Card(
        margin: EdgeInsets.zero,
        color: Colors.red,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30))),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20.0,
                ),
              ],
              color: Color(0xff252525),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(100))),
          width: 200,
          height: 100,
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.only(left: 48.0, right: 18.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cart Details',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                  textAlign: TextAlign.justify,
                ),
                RaisedButton(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 40, right: 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90)),
                    child: Text(
                      'Pay Now',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () => {})
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _stylebuilder({
    String image,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
            width: 130,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Harris Swoop Dining Chair \n \$ 129.00',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
