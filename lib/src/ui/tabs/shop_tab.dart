import 'package:flutter/material.dart';

class ShopTab extends StatelessWidget {

  ShopTab();

@override
 Widget build(BuildContext context) {
   return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.purple,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          ),
          Spacer(),
        ],
      ),
    );
 }
}