import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/title_bar.dart';


class ProfileTab extends StatelessWidget {

  ProfileTab();

 @override
 Widget build(BuildContext context) {
     return Scaffold(
      body: Column(
        children: <Widget>[
          buildTitleBar(),
          Expanded(
            flex:18,
            child: Container(
              color: Colors.black38,
            ),
         ),
        ],
      ),
    );
  }
}