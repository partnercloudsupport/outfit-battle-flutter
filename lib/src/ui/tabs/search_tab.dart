import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/search_tab_widgets/popular_hashtags_layout.dart';
import 'package:outfit_battle/src/ui/widgets/search_tab_widgets/title_bar.dart';

class SearchTab extends StatelessWidget {
  SearchTab();

  @override
  Widget build(BuildContext context) {        

    return Scaffold(
      body: Column(
        children: <Widget>[
          buildTitleBar(),
          buildPopularHashtagsLayout(),
        ],
      ),
    );
  }
}

    


