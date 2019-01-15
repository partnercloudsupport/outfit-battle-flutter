import 'package:flutter/material.dart';

Expanded buildTitleBar() {
    return Expanded(
      flex: 2,
      child: Row(
        children: <Widget>[
          Text("Shop",
              style: TextStyle(fontFamily: 'Amatic', fontSize: 32.0)),
        ],
      ),
    );
}