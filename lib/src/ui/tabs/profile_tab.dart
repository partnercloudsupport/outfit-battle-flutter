import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/profile_battles_layout.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/profile_layout.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/title_bar.dart';

class ProfileTab extends StatelessWidget {
  ProfileTab();

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: <Widget>[
                  buildTitleBar(context),
                  buildProfileLayout(context),
                  buildProfileBattlesLayout(),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}

