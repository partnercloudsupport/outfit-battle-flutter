 import 'package:flutter/material.dart';

Align buildPreviousBattleButton() {
    return Align(
      alignment: Alignment(-1.1, 0.0),
      child: Container(
        decoration: new BoxDecoration(
          boxShadow: [BoxShadow(
              color: Colors.black12,
              blurRadius: 2.0,
              spreadRadius: 2.0
            )],
          color: Colors.black12,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          color: Colors.white,
          icon: Icon(Icons.navigate_before),
          onPressed: () {},
        ),
      ),
    );
  }