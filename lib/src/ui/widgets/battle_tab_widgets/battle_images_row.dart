import 'package:flutter/material.dart';
import 'dart:math';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/battle_image_card.dart';

Row buildBattleImagesRow() {
    String firstBattlerImageUrl =
        "https://loremflickr.com/300/400/moel,girl?lock=${1+Random().nextInt(60)}";
    String secondBattlerImageUrl =
        "https://loremflickr.com/300/400/model,girl?lock=${2+Random().nextInt(60)}";

    return Row(
      children: <Widget>[
        buildBattleImageCard(firstBattlerImageUrl),
        buildBattleImageCard(secondBattlerImageUrl),
      ],
    );
  }