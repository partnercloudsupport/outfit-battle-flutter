import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {

  ProfileTab();

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
                     "Profile",
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