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
        widthFactor: 0.4,
        heightFactor: 0.2,
        child: Container(
          decoration: new BoxDecoration(
            color: Colors.black12,
            shape: BoxShape.rectangle,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildFirstBattlerVoteButton(),
              buildSecondBattlerVoteButton(),
            ],
          ),
        ),
      ),
    );
  }
