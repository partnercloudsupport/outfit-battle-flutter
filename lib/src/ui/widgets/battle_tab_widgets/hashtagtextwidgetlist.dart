import 'package:flutter/material.dart';

List<Widget> buildHashtagTextWidgetList(List<String> battlerHashtagList) {
  List<Widget> battlerHashtagTextWidgetList = List<Widget>();

  for (String hashtag in battlerHashtagList) {
    hashtag == battlerHashtagList.first
        ? battlerHashtagTextWidgetList.add(
            InkWell(
              onTap: () {
                print("tapped $hashtag");
              },
              child: Text(
                hashtag,
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
              ),
            ),
          )
        : battlerHashtagTextWidgetList.add(
            InkWell(
              onTap: () {
                print("tapped $hashtag");
              },
              child: Text(
                hashtag,
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.black38),
              ),
            ),
          );

    print(hashtag);
  }
  return battlerHashtagTextWidgetList;
}
