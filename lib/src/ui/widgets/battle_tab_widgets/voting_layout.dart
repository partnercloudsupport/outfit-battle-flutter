import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/first_battler_vote_button.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/second_battler_vote_button.dart';

Container buildVotingLayout() {
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
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: <Color>[
            Colors.transparent,
            Colors.black12,
          ],
          stops: [0.1, 0.5],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        // color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            buildFirstBattlerVoteButton(),
            buildSecondBattlerVoteButton(),
          ],
        ),
      ),
    ),
  );
}
