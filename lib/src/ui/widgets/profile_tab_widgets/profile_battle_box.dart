import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/profile_preview_layout.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/profile_users_identities.dart';

Widget buildBattleBox() {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildUserIdentities(),
          buildBattlePreviewLayout(),
        ],
      ),
    );
  }
