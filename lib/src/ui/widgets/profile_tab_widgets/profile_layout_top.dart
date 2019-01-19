import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/profile_avatar.dart';

Expanded buildProfileLayoutTop() {
  return Expanded(
      flex: 2,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              constraints: BoxConstraints(
              maxHeight: double.infinity,
              maxWidth: double.infinity,
              minWidth: double.infinity,
              minHeight: double.infinity),
              child: buildProfileAvatar( "https://loremflickr.com/300/400/babe,girl?lock=097", battlerInitial: "J",)),
          ),
          Expanded(
            flex: 6,
            child: Container(color: Colors.red,),
          ),
        ],
      ));
}
