import 'package:flutter/material.dart';
import 'package:outfit_battle/src/resources/custom_icons.dart';


 bottomNavigationBarItems() {
        return 
        bottomNavigationItemList();
}

 List<BottomNavigationBarItem> bottomNavigationItemList() {
   return [           
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.swords_crossed, 
          color: Colors.black,
          ),
          title: Text(
            "Battles",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.black),
          title: Text(
            "Search",
            style: TextStyle(
              color: Colors.black,
            ),
            ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket, color: Colors.black),
          title: Text(
            "Shop",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, color: Colors.black),
          title: Text(
            "Notifications",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.black),
          title: Text(
            "Profile",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        )
      ];
 }