import 'package:flutter/material.dart';
import 'package:outfit_battle/src/resources/custom_icons.dart';
import 'package:flutter_advanced_networkimage/flutter_advanced_networkimage.dart';
import 'package:flutter_advanced_networkimage/transition_to_image.dart';

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
          onPressed: (){
          },
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
                child: Stack(
                  children: <Widget>[
                    imagesRow(firstBattlerImageUrl, secondBattlerImageUrl),
                    votingLayout(),
                    previousButton(),
                    nextButton(),
                  ],
                ),
    );
  }

  Align previousButton() {
    return Align(
      alignment: Alignment(-1.1, 0.0),
                      child: Container(
                        decoration: new BoxDecoration(
                          color: Colors.black45,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                           color: Colors.white70,
                          icon: Icon(Icons.navigate_before),
                          onPressed: (){},
                        ),),
                      
                    );
  }
  
  Align nextButton() {
    return Align(
      alignment: Alignment(1.1, 0.0),
                      child: Container(
                        decoration: new BoxDecoration(
                          color: Colors.black45,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                           color: Colors.white70,
                          icon: Icon(Icons.navigate_next),
                          onPressed: (){},
                        ),),
                      
                    );
  }
  
  

  Container votingLayout() {
    return Container( constraints: BoxConstraints(
                          maxHeight: double.infinity,
                          maxWidth: double.infinity,
                          minWidth: double.infinity,
                          minHeight: double.infinity
                      ),
                      child: FractionallySizedBox(
                          alignment: Alignment(0.0, 0.9),
                          widthFactor: 0.4,
                          heightFactor: 0.2,
                          child: Container(
                            decoration: new BoxDecoration(
                              color: Colors.black45,
                              // color: Colors.black45,
                              shape: BoxShape.circle,
                          ),
                            // color: Colors.green,
                          ),
                        ),
                    );
  }

  Row imagesRow(String firstBattlerImageUrl, String secondBattlerImageUrl) {
    return Row(
                  children: <Widget>[
                    buildImageCard(firstBattlerImageUrl),
                    buildImageCard(secondBattlerImageUrl),
                ],           
     ) ;
  }

  Expanded buildImageCard(String battlerImageUrl) {
    return Expanded(
                    flex: 1,
                    child: Center(
                    child: AspectRatio(
                          aspectRatio: 3 / 4,
                    child: Card(    
                          child: new Container(
                            child: TransitionToImage(
                                  AdvancedNetworkImage(battlerImageUrl,
                                    loadedCallback: () {
                                      // showVoteButton();
                                      print('Image loaded!');
                                    },
                                    loadFailedCallback: () {
                                      // hideVoteButton();
                                      print('Image load failed!');
                                    },
                                    useDiskCache: true,
                                  ),
                                  loadingWidget: const CircularProgressIndicator(),
                                  fit: BoxFit.cover,
                                  placeholder: const Icon(Icons.refresh),
                                  enableRefresh: true,
                                ),
                                
                              //NetworkImage(battlerImageUrl),
                            ),
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
