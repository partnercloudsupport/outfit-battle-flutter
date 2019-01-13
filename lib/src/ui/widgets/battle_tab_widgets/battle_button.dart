import 'package:flutter/material.dart';
import 'package:outfit_battle/src/resources/custom_icons.dart';

Expanded buildBattleButton() {
    return Expanded(
        flex: 2,
        child: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 0.0),
            child: Icon(
              CustomIcons.swords_crossed,
              color: Colors.white,
            ),
          ),
          onPressed: () {},
        ));
  }