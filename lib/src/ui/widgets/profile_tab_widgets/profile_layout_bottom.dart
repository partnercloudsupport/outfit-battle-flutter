import 'package:flutter/material.dart';

Expanded buildProfileLayoutBottom() {
  return Expanded(
    flex: 1,
    child: Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "jane_dee",
            style: TextStyle(fontSize: 24),
          ),
          Text(
            "You can find me where the fun is.",
            style: TextStyle(color: Colors.black38),
          ),
        ],
      ),
    ),
  );
}
