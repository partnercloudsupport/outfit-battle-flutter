import 'package:flutter/material.dart';
import 'package:outfit_battle/src/resources/custom_icons.dart';


 bottomNavigationBarItems() {
        return 
        bottomNavigationItemList();
}

 List<BottomNavigationBarItem> bottomNavigationItemList() {
   return [           
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.swords_crossed, color: Colors.blue),
          title: Text(
            "Battles",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.blue),
          title: Text(
            "Search",
            style: TextStyle(
              color: Colors.blue,
            ),
            ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket, color: Colors.blue),
          title: Text(
            "Shop",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, color: Colors.blue),
          title: Text(
            "Notifications",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.blue),
          title: Text(
            "Profile",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        )
      ];
 }