import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/search_tab_widgets/popular_hashtags_layout.dart';
import 'package:outfit_battle/src/ui/widgets/title_bar.dart';

class SearchTab extends StatelessWidget {
  SearchTab();

  @override
  Widget build(BuildContext context) {        

    return Scaffold(
      body: Column(
        children: <Widget>[
          buildTitleBar("Search"),
          buildSearchBar(),
          buildPopularHashtagsLayout(),
        ],
      ),
    );
  }


  Expanded buildSearchBar() {
    return Expanded(
          flex: 2,
          child: Container(
            color: Colors.greenAccent,
          ),
        );
  }
}


    


