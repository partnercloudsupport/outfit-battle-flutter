import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/battle_images_row.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/next_battle_button.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/previous_battle_button.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/voting_layout.dart';

Expanded buildBattlePreviewLayout() {
    return Expanded(
      flex: 6,
      child: Stack(
        children: <Widget>[
          buildBattleImagesRow(),
          buildVotingLayout(),
          // buildPreviousBattleButton(),
          // buildNextBattleButton(),
        ],
      ),
    );
  }