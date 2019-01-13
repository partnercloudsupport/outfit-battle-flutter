import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/battle_preview_layout.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/hashtag_layout.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/user_identities.dart';

Expanded buildBattleBox() {
    return Expanded(
      flex: 14,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildUserIdentities(),
            buildBattlePreviewLayout(),
            buildHashtagsLayout(),
          ],
        ),
      ),
    );
  }
