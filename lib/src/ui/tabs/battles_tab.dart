import 'package:flutter/material.dart';

class BattlesTab extends StatelessWidget {

  BattlesTab();

 @override
 Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
      ),
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
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  elevation: 5.0,
                  padding: EdgeInsets.all(15.0),
                  color: Colors.grey,
                  child: Text("Get Sizes"),
                  onPressed: null,
                ),
                MaterialButton(
                  elevation: 5.0,
                  color: Colors.grey,
                  padding: EdgeInsets.all(15.0),
                  child: Text("Get Positions"),
                  onPressed: null,
                )
              ],
            ),
          )
        ],
      ),
    );
 }
}