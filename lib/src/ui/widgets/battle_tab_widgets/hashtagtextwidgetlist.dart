import 'package:flutter/material.dart';

List<Text> buildHashtagTextWidgetList(List<String> battlerHashtagList) {
    List<Text> battlerHashtagTextWidgetList = List<Text>();
    
    for (String hashtag in battlerHashtagList) {

      
       hashtag==battlerHashtagList.first
       ?
       battlerHashtagTextWidgetList.add(Text(hashtag, style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black),),)
       :
       battlerHashtagTextWidgetList.add(Text(hashtag, style: TextStyle(fontStyle: FontStyle.italic, color: Colors.black38),),);  
      
      print(hashtag);
    }
    return battlerHashtagTextWidgetList; 

  }