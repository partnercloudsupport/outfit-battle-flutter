import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/first_battle_identity.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/second_battler_identity.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/versus_icon.dart';

Expanded buildUserIdentities() {
    String firstBattlerImageUrl =
        "https://loremflickr.com/300/400/model,girl?lock=37";
    String secondBattlerImageUrl =
        "https://loremflickr.com/300/400/model,girl?lock=5";
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            buildFirstBattlerIdentity(firstBattlerImageUrl),
            buildVersusIcon(),
            buildSecondBattlerIdentity(secondBattlerImageUrl),
          ],
        ),
      )
    );
  }