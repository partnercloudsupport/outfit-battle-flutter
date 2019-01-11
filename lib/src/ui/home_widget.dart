import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/tabs/battles_tab.dart';
import 'package:outfit_battle/src/ui/tabs/notifications_tab.dart';
import 'package:outfit_battle/src/ui/tabs/profile_tab.dart';
import 'package:outfit_battle/src/ui/tabs/search_tab.dart';
import 'package:outfit_battle/src/ui/tabs/shop_tab.dart';
import 'package:outfit_battle/src/ui/widgets/bottom_nav_bar_items.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() {
    return new _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    BattlesTab(),
    SearchTab(),
    ShopTab(),
    NotificationsTab(),
    ProfileTab(),    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: bottomNavigationBarItems(),
      ),
    );
  }

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }

  
}
