import 'package:flutter/material.dart';
import 'package:outfit_battle/src/resources/custom_icons.dart';
import 'package:flutter_advanced_networkimage/flutter_advanced_networkimage.dart';
import 'package:flutter_advanced_networkimage/transition_to_image.dart';

class BattlesTab extends StatelessWidget {
  BattlesTab();

  @override
  Widget build(BuildContext context) {
    String firstBattlerImageUrl =
        "https://loremflickr.com/300/400/model,girl?lock=37";
    String secondBattlerImageUrl =
        "https://loremflickr.com/300/400/model,girl?lock=5";

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
        child: FloatingActionButton(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 0.0),
            child: Icon(
              CustomIcons.swords_crossed,
              color: Colors.white,
            ),
          ),
          onPressed: () {},
        ));
  }

  Expanded buildBattleBox(
      String firstBattlerImageUrl, String secondBattlerImageUrl) {
    return Expanded(
      flex: 14,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildUserIdentities(),
            buildBattlePreviewLayout(
                firstBattlerImageUrl, secondBattlerImageUrl),
            buildHashtagsLayout(),
          ],
        ),
      ),
    );
  }

  Expanded buildUserIdentities() {
    String firstBattlerImageUrl =
        "https://loremflickr.com/300/400/model,girl?lock=37";
    String secondBattlerImageUrl =
        "https://loremflickr.om/300/400/model,girl?lock=5";
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            firstBattlerIdentity(firstBattlerImageUrl),
            versusIcon(),
            secondBattlerIdentity(secondBattlerImageUrl),
          ],
        ),
      )
    );
  }

  Expanded versusIcon(){
      return Expanded(
        flex: 2,
        child: Container(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
            maxWidth: double.infinity,
            minWidth: double.infinity,
            minHeight: double.infinity),
              child: FractionallySizedBox(
                alignment: Alignment(0.0, 0.0),
                widthFactor: 0.5,
                heightFactor: 0.5,
                  child: Stack(
                    alignment: Alignment.center,
                      children: <Widget> [Container(
                      decoration: new BoxDecoration(
                        color: Colors.black87,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Text("VS",
                    style: TextStyle(color: Colors.white),),
                  ],
      ),      
      ),
    ),
    );
  }

  Expanded firstBattlerIdentity(String firstBattlerProfilePictureUrl){
    return Expanded(
      flex: 4,
      child: (
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
            battlerAvatar(firstBattlerProfilePictureUrl, battlerNumber: "1", ),
            battlerUsername("jasmine3rd"),
         ], 
        )
      ),
    );
  }

  Text battlerUsername(String username) => Text(username);

  Expanded secondBattlerIdentity(String secondBattlerProfilePictureUrl){
    return Expanded(
      flex: 4,
      child: (
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
         children: <Widget>[
            battlerAvatar(secondBattlerProfilePictureUrl, battlerNumber: "2", ),
            battlerUsername("swoosh_suzzy"),
         ], 
        )
      ),
    );
    }

  Container battlerAvatar(String battlerProfilePictureUrl, {String battlerNumber}) {
    return Container(
    width: 30.0,
    height: 30.0,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.blue,
    ),
    // margin: const EdgeInsets.only(top: 32.0, left: 16.0),
    // padding: const EdgeInsets.all(3.0),
    child: ClipOval(
          child: TransitionToImage(
                AdvancedNetworkImage(
                  battlerProfilePictureUrl,
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
                placeholder:  CircleAvatar(
                  backgroundColor: Colors.black54,
                  child: Text(battlerNumber, 
                  style: TextStyle(color: Colors.white,),
                ),
                ),
                enableRefresh: true,
              
              ),
    ),
    );
  }


  Expanded buildBattlePreviewLayout(
      String firstBattlerImageUrl, String secondBattlerImageUrl) {
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
          onPressed: () {},
        ),
      ),
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
          onPressed: () {},
        ),
      ),
    );
  }

  Container votingLayout() {
    return Container(
      constraints: BoxConstraints(
          maxHeight: double.infinity,
          maxWidth: double.infinity,
          minWidth: double.infinity,
          minHeight: double.infinity),
      child: FractionallySizedBox(
        alignment: Alignment(0.0, 0.9),
        widthFactor: 0.4,
        heightFactor: 0.2,
        child: Container(
          decoration: new BoxDecoration(
            color: Colors.black12,
            shape: BoxShape.rectangle,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              firstBattlerVoteButton(),
              secondBattlerVoteButton(),
            ],
          ),
        ),
      ),
    );
  }

  Container firstBattlerVoteButton() {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.white30,
        // color: Colors.pink,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        color: Colors.black,
        icon: Icon(Icons.check),
        onPressed: () {},
      ),
    );
  }

  Container secondBattlerVoteButton() {
    return Container(
      decoration: new BoxDecoration(
        color: Colors.white30,
        // color: Colors.pink,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        color: Colors.black,
        icon: Icon(Icons.check),
        onPressed: () {},
      ),
    );
  }

  Row imagesRow(String firstBattlerImageUrl, String secondBattlerImageUrl) {
    return Row(
      children: <Widget>[
        buildImageCard(firstBattlerImageUrl),
        buildImageCard(secondBattlerImageUrl),
      ],
    );
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
                AdvancedNetworkImage(
                  battlerImageUrl,
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
        child: (Container(color: Colors.transparent)),
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
