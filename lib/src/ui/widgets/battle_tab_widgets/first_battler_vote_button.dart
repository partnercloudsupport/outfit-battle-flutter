import 'package:flutter/material.dart';

Container buildFirstBattlerVoteButton() {
  return Container(
    decoration: new BoxDecoration(
      border: Border.all(
        color: Colors.white,
        width: 0.5,
      ),
      color: Colors.transparent,
      shape: BoxShape.circle,
    ),
    child: IconButton(
      splashColor: Colors.white,
      color: Colors.white,
      icon: Icon(Icons.check),
      onPressed: () {},
    ),
  );
}
