import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/title_bar.dart';


class ProfileTab extends StatelessWidget {

  ProfileTab();

 @override
 Widget build(BuildContext context) {
     return Scaffold(
      body:Column(
          children: <Widget>[
            buildTitleBar(),
            Expanded(
              flex:6,
              child: Container(
                color: Colors.blue,
              ),
           ),
           Expanded(
              flex:12,
              child: Container(
                
                child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 12.0,
                      color: Colors.amberAccent,
                    ),
                  );
                },

                ),
              ),
           ),
          ],
        ),
    );
  }
}