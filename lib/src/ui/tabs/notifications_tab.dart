import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/title_bar.dart';

class NotificationsTab extends StatelessWidget {

  NotificationsTab();

@override
 Widget build(BuildContext context) {
   return Scaffold(
      body: Column(
        children: <Widget>[
          buildTitleBar("Notifications"),
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