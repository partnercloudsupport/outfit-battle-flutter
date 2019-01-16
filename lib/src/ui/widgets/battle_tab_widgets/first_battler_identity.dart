import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/battler_avatar.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/battler_username.dart';

Expanded buildFirstBattlerIdentity(String firstBattlerProfilePictureUrl){
    return Expanded(
      flex: 4,
      child: (
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
            buildBattlerAvatar( "https://loremflickr.com/300/400/model,girl?lock=37", battlerInitial: "J",),
            buildBattlerUsername("jasmine3rd"),
         ], 
        )
      ),
    );
  }