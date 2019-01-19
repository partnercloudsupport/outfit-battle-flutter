import 'package:flutter/material.dart';

Container buildTitleBar(context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.1,
    child: Row(
      children: <Widget>[
        Text("Profile", style: TextStyle(fontFamily: 'Amatic', fontSize: 32.0)),
      ],
    ),
  );
}
