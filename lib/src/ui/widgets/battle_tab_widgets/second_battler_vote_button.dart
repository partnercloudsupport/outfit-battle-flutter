  import 'package:flutter/material.dart';

Container buildSecondBattlerVoteButton() {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        splashColor: Colors.white,
        color: Colors.black,
        icon: Icon(Icons.check),
        onPressed: () {},
      ),
    );
  }