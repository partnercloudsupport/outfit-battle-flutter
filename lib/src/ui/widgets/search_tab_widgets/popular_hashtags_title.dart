import 'package:flutter/material.dart';

Expanded buildPopularHashtagsTitle() {
  return Expanded(
        flex: 1,
        child: Align(
          alignment: Alignment(-1.0, 0.0),
          child: Text("Popular Hashtags", style: TextStyle(fontSize: 16.0))),
      );
}
