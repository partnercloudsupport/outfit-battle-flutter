import 'package:flutter/material.dart';

Widget buildSecondBattlerVoteScore() {
  return Container(
    decoration: new BoxDecoration(
      border: Border.all(
        color: Colors.white,
        width: 0.5,
      ),
      color: Colors.red,
      shape: BoxShape.circle,
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          "22%",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white
          ),
        ),
      ),
    ),
  );
}
