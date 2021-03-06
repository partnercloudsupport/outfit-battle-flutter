import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/hashtagtextwidgetlist.dart';

Expanded buildFirstBattlerHashtagLayout(List<String> firstBattlerHashtagList) {
  return Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: 
                buildHashtagTextWidgetList(firstBattlerHashtagList),
                ),
          ),
        );
}