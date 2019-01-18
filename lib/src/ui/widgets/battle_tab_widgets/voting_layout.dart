import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/first_battler_vote_button.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/second_battler_vote_button.dart';

Container buildVotingLayout() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: <Color>[Colors.black26, Colors.transparent],
        begin: Alignment(0.0, 1.0),
        end: Alignment(0.0, 0.0),

        )
      ),
      constraints: BoxConstraints(
          maxHeight: double.infinity,
          maxWidth: double.infinity,
          minWidth: double.infinity,
          minHeight: double.infinity),
      child: FractionallySizedBox(
        alignment: Alignment(0.0, 0.9),
        widthFactor: 1.0,
        heightFactor: 0.2,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildFirstBattlerVoteButton(),
              buildSecondBattlerVoteButton(),
            ],
          ),
        ),
      ),
    );
  }
