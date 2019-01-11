import 'package:flutter/material.dart';

class BattlesTab extends StatelessWidget {

  BattlesTab();

 @override
 Widget build(BuildContext context) {
   return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
          flex: 1,
            child: 
                Row(
                  children: <Widget>[
                    Text(
                     "Battles",
                     style: TextStyle(
                       fontFamily: 'Amatic',
                       fontSize: 32.0
                     )
                    ),
                  ],
                ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
 }
}