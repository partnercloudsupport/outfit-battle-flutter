import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/battle_images_row.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/profile_score_layout.dart';

Expanded buildBattlePreviewLayout() {
    return Expanded(
      flex: 6,
      child: Stack(
        children: <Widget>[
          buildBattleImagesRow(),
          buildScoreLayout(),
        ],
      ),
    );
  }