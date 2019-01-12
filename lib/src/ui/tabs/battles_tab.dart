import 'package:flutter/material.dart';
import 'package:outfit_battle/src/resources/custom_icons.dart';

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
      flex: 2,
      // child: Center(
      //   child: 
      //        RaisedButton.icon(
      //         onPressed: () {},
      //         color: Colors.black,
      //         elevation: 4.0,
      //         shape: new RoundedRectangleBorder(
      //             borderRadius: new BorderRadius.circular(30.0)),
      //         label: Text("Battle", style: TextStyle(color: Colors.white),),
      //         icon: Padding(
      //           padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
      //           child: Icon(CustomIcons.swords_crossed, 
      //           color: Colors.white,),
      //         ),
      //          ),
      // ),
        child : FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 0.0),
                child: Icon(CustomIcons.swords_crossed, 
                color: Colors.white,),
              ),
          onPressed: (){},
        )
      // ...FloatingActionButton properties...
    // ),
    );
  }

  Expanded buildBattleBox() {
    return Expanded(
      flex: 14,
      child: Container(
        color: Colors.blue,
      ),
    );
  }

  Expanded buildTitleBar() {
    return Expanded(
      flex: 2,
      child: Row(
        children: <Widget>[
          Text("Battle",
              style: TextStyle(fontFamily: 'Amatic', fontSize: 32.0)),
        ],
      ),
    );
  }
}
