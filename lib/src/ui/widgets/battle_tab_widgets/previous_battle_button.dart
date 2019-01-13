 import 'package:flutter/material.dart';

Align buildPreviousBattleButton() {
    return Align(
      alignment: Alignment(-1.1, 0.0),
      child: Container(
        decoration: new BoxDecoration(
          color: Colors.black45,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          color: Colors.white70,
          icon: Icon(Icons.navigate_before),
          onPressed: () {},
        ),
      ),
    );
  }