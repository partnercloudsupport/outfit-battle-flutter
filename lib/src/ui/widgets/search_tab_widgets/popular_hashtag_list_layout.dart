import 'package:flutter/material.dart';
import 'dart:math';
import 'package:outfit_battle/src/ui/widgets/search_tab_widgets/battle_image.dart';

Container buildPopularHashtagsListLayout() {

  var hashtagTextList = ["nature", "life", "mondayMotivation", "newYear", "2019"];
  var battleImageUrl = "https://loremflickr.com/300/400/model?model,${Random().nextInt(60)}";

  return Container(
    constraints: BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: double.infinity,
        minWidth: double.infinity,
        minHeight: double.infinity),
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: hashtagTextList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
          child: Column(
            children: <Widget>[
              Text(
               "#${hashtagTextList[index]}"
                // style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: hashtagTextList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AspectRatio(
                      aspectRatio: 7 / 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Row(
                            children: <Widget>[
                              battleImage(hashtagTextList, index, battleImageUrl),
                              battleImage(hashtagTextList, index, battleImageUrl),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}


