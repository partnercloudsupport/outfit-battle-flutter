  import 'package:flutter/material.dart';

Align buildNextBattleButton() {
    return Align(
      alignment: Alignment(1.1, 0.0),
      child: Container(
        decoration: new BoxDecoration(
          color: Colors.black45,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          color: Colors.white70,
          icon: Icon(Icons.navigate_next),
          onPressed: () {},
        ),
      ),
    );
  }
