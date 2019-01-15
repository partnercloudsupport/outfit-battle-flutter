import 'package:flutter/material.dart';

Expanded buildTitleBar() {
    return Expanded(
      flex: 2,
      child: Row(
        children: <Widget>[
          Text("Profile",
              style: TextStyle(fontFamily: 'Amatic', fontSize: 32.0)),
        ],
      ),
    );
}