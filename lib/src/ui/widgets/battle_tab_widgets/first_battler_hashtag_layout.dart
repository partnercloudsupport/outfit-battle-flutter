import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/hashtagtextwidgetlist.dart';

Expanded buildSecondBattlerHashtagLayout(List<String> secondBattlerHashtagList) {
  return Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(4.0, 4.0, 4.0, 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: 
                buildHashtagTextWidgetList(secondBattlerHashtagList),
                ),
          ),
        );
}