import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/profile_avatar.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/profile_details.dart';

Expanded buildProfileLayoutTop() {
  return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                    child: buildProfileAvatar(
                  "https://loremflickr.com/300/400/babe,smile?lock=02",
                  battlerInitial: "J",
                )),
              ),
              Expanded(
                flex: 6,
                child: buildProfileDetails(),
              ),
            ],
          ),
        ],
      ));
}
