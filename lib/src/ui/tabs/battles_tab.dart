import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/ad_battle_box.dart';
// import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/battle_box.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/battle_button.dart';
import 'package:outfit_battle/src/ui/widgets/battle_tab_widgets/title_bar.dart';

class BattlesTab extends StatelessWidget {
  BattlesTab();

  @override
  Widget build(BuildContext context) {        

    return Scaffold(
      body: Column(
        children: <Widget>[
          buildTitleBar(),
          Spacer(),
          // buildBattleBox(),
          buildAdBattleBox(),
          Spacer(),
          buildBattleButton(context),
        ],
      ),
    );
  }
}


    


