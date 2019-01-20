import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/profile_layout_bottom.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/profile_layout_top.dart';

Container buildProfileLayout(context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.3,
    child: Column(
      children: <Widget>[
        buildProfileLayoutTop(),
        buildProfileLayoutBottom()
        
      ],
    ),
  );
}




