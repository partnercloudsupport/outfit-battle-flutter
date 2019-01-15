import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/title_bar.dart';

class SearchTab extends StatelessWidget {
  SearchTab();

  @override
  Widget build(BuildContext context) {        

    return Scaffold(
      body: Column(
        children: <Widget>[
          buildTitleBar("Search"),
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


    


