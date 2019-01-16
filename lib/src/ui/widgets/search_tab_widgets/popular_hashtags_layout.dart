import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/search_tab_widgets/popular_hashtag_list_layout.dart';
import 'package:outfit_battle/src/ui/widgets/search_tab_widgets/popular_hashtags_title.dart';

Expanded buildPopularHashtagsLayout() {
  return Expanded(
    flex: 18,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildPopularHashtagsTitle(),
        Expanded(
          flex: 9,
          child:buildPopularHashtagsListLayout(),
        ),
      ],
    ),
  );
}

