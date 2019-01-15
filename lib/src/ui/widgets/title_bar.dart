import 'package:flutter/material.dart';

Expanded buildTitleBar(String tabTitle) {
    return Expanded(
      flex: 2,
      child: Row(
        children: <Widget>[
          Text(tabTitle,
              style: TextStyle(fontFamily: 'Amatic', fontSize: 32.0)),
        ],
      ),
    );
}