import 'package:flutter/material.dart';
import 'package:outfit_battle/src/resources/custom_icons.dart';
import 'package:flutter_advanced_networkimage/flutter_advanced_networkimage.dart';
import 'package:flutter_advanced_networkimage/transition_to_image.dart';
import 'package:flutter_advanced_networkimage/zoomable_list.dart';


class BattlesTab extends StatelessWidget {
  BattlesTab();

  @override
  Widget build(BuildContext context) {
    String firstBattlerImageUrl = "https://loremflickr.com/300/400/model,girl?lock=37";
    String secondBattlerImageUrl = "https://loremflickr.com/300/400/model,girl?lock=5";

    return Scaffold(
      body: Column(
        children: <Widget>[
          buildTitleBar(),
          Spacer(),
          buildBattleBox(firstBattlerImageUrl, secondBattlerImageUrl),
          Spacer(),
          buildBattleButton(),
        ],
      ),
    );
  }

  Expanded buildBattleButton() {
    return Expanded(
      flex: 2,
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
    );
  }

  Expanded buildBattleBox(String firstBattlerImageUrl, String secondBattlerImageUrl) {
    return Expanded(
      flex: 14,
      child: Card(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildUserIdentities(),
                buildBattlePreviewLayout(firstBattlerImageUrl, secondBattlerImageUrl),
                buildHashtagsLayout(),
              ],
            ),
      ),
    );
  }

Expanded buildUserIdentities() {
    return Expanded(
                flex: 2,
                child: Center(
                  child: (
                    Container(color: Colors.deepPurpleAccent)
                  ),
                ),
              );
  }

  Expanded buildBattlePreviewLayout(String firstBattlerImageUrl, String secondBattlerImageUrl) {
    return Expanded(
                flex: 6,
                child: Row(
                  children: imagesRow(firstBattlerImageUrl, secondBattlerImageUrl),
                  ),
              );
  }

  List<Widget> imagesRow(String firstBattlerImageUrl, String secondBattlerImageUrl) {
    return <Widget>[
                    buildImageCard(firstBattlerImageUrl),
                    buildImageCard(secondBattlerImageUrl),
                ];
  }

  Expanded buildImageCard(String battlerImageUrl) {
    return Expanded(
                    flex: 1,
                    child: Card(
                      child: AspectRatio(
          aspectRatio: 3 / 4,
          child: new Container(
            child: TransitionToImage(
                  AdvancedNetworkImage(battlerImageUrl,
                    loadedCallback: () {
                      print('It works!');
                    },
                    loadFailedCallback: () {
                      print('Oh, no!');
                    }
                  ),
                  loadingWidget: const CircularProgressIndicator(),
                  fit: BoxFit.contain,
                  placeholder: const Icon(Icons.refresh),
                  width: 400.0,
                  height: 300.0,
                  enableRefresh: true,
                ),
                
              //NetworkImage(battlerImageUrl),
            ),
          ),
        ),
    );
  }

  Expanded buildHashtagsLayout() {
    return Expanded(
                flex: 2,
                child: Center(
                  child: (
                    Container(color: Colors.deepPurpleAccent)
                  ),
                ),
              );
  }

  Expanded buildTitleBar() {
    return Expanded(
      flex: 2,
      child: Row(
        children: <Widget>[
          Text("Battles",
              style: TextStyle(fontFamily: 'Amatic', fontSize: 32.0)),
        ],
      ),
    );
  }
}
