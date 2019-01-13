import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/first_battler_hashtag_layout.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/second_battler_hashtag_layout.dart';

Expanded buildHashtagsLayout() {
  List<String> firstBattlerHashtagList = ["#weekend", "#liveLife", "#instaGood", "#nature", "#jasmineTravels"];
  List<String> secondBattlerHashtagList = ["#weekend", "#wild", "#2019"];

    return Expanded(
      flex: 2,
      child: Row(
        children: <Widget>[
          buildFirstBattlerHashtagLayout(firstBattlerHashtagList),
          buildSecondBattlerHashtagLayout(secondBattlerHashtagList),
        ],
      ),
    );
  }


