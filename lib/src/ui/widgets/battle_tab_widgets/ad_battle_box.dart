import 'package:flutter/material.dart';

Expanded buildAdBattleBox() {
    return Expanded(
      flex: 14,
      child: Card(
        color: Colors.black26,
        child: Center(
          child: Text(
            "Advertise here",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
