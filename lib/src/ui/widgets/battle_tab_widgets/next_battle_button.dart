  import 'package:flutter/material.dart';

Align buildNextBattleButton() {
    return Align(
      alignment: Alignment(1.1, 0.0),
      child: Container(
        decoration: new BoxDecoration(
          color: Colors.black12,
          boxShadow: [BoxShadow(
              color: Colors.black12,
              blurRadius: 2.0,
              spreadRadius: 2.0
            )],
          shape: BoxShape.circle,
        ),
        child: IconButton(
          color: Colors.white,
          icon: Icon(Icons.navigate_next),
          onPressed: () {},
        ),
      ),
    );
  }
