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
      child: Card(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildUserIdentities(),
                buildBattlePreviewLayout(),
                buildHashtagsLayout(),
              ],
            ),
      ),
    );
  }

  Padding buildHashtagsLayout() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child:
              Text("#fridayChilling"),
              ),
          Expanded(
            flex: 1,
            child:
              Text("#fridayChilling"),              
              ),
      ],
    ),
    );
  }

  Expanded buildBattlePreviewLayout() {
    return Expanded(
                flex: 1,
                child: Center(
                  child: (
                    Container(color: Colors.limeAccent,)
                  ),
                ),
              );
  }

  Padding buildUserIdentities() {
    return Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                child: Row(
                  children: <Widget>[
  new Expanded(
    flex: 1,
    child:
                          Row(  
                          children: <Widget>[
                            new Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                              ),
                            ),
                            new SizedBox(
                              width: 10.0,
                            ),
                            new Text(
                              "janeDoe",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),),
                         new Expanded(
    flex: 1,
    child:
                          Row(  
                          children: <Widget>[
                            new Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new NetworkImage(
                                        "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                              ),
                            ),
                            new SizedBox(
                              width: 10.0,
                            ),
                            new Text(
                              "johnDoe",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),),
],
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
