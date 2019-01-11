import 'package:flutter/material.dart';

class BattlesTab extends StatelessWidget {

  BattlesTab();

 @override
 Widget build(BuildContext context) {
   return Scaffold(
      body: Column(
        children: <Widget>[
          buildTitleBar(),
          Spacer(),
          buildBattleBox(),
          Spacer(),
          buildBattleButton(),
        ],
      ),
    );
 }

 Expanded buildBattleButton() {
   return Expanded(
          flex: 3,
          child: Container(
            color: Colors.indigoAccent,
          ),
        );
 }

 Expanded buildBattleBox() {
   return Expanded(
          flex: 13,
          child: Container(
            color: Colors.blue,
          ),
        );
 }

 Expanded buildTitleBar() {
   return Expanded(
        flex: 2,
          child: 
              Row(
                children: <Widget>[
                  Text(
                   "Battles",
                   style: TextStyle(
                     fontFamily: 'Amatic',
                     fontSize: 32.0
                   )
                  ),
                ],
              ),
        );
 }
}