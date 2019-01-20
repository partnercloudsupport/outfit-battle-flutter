import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/profile_first_battler_score.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/profile_second_battler_score.dart';

Container buildScoreLayout() {
  return Container(
    constraints: BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: double.infinity,
        minWidth: double.infinity,
        minHeight: double.infinity),
    child: FractionallySizedBox(
      alignment: Alignment(0.0, 0.9),
      widthFactor: 1.0,
      heightFactor: 0.4,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            buildFirstBattlerVoteScore(),
            buildSecondBattlerVoteScore(),
          ],
        ),
      ),
    ),
  );
}
