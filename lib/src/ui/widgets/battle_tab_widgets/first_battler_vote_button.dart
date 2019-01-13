import 'package:flutter/material.dart';

Container buildFirstBattlerVoteButton() {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        color: Colors.black,
        icon: Icon(Icons.check),
        onPressed: () {},
      ),
    );
  }