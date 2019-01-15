import 'package:flutter/material.dart';

Expanded buildPopularHashtagsLayout() {
  return Expanded(
    flex: 18,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment(-1.0, 0.0),
            child: Text("Popular Hashtags", style: TextStyle(fontSize: 16.0))),
        ),
        Expanded(
          flex: 9,
          child: Container(
            color: Colors.blueAccent,
          ),
        )
      ],
    ),
  );
}
