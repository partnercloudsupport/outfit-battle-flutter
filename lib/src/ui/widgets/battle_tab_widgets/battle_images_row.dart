import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/battle_image_card.dart';

Row buildBattleImagesRow() {
    String firstBattlerImageUrl =
        "https://loremflickr.com/300/400/model,girl?lock=37";
    String secondBattlerImageUrl =
        "https://loremflickr.com/300/400/model,girl?lock=5";

    return Row(
      children: <Widget>[
        buildBattleImageCard(firstBattlerImageUrl),
        buildBattleImageCard(secondBattlerImageUrl),
      ],
    );
  }