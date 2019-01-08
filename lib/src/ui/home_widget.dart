import 'package:flutter/material.dart';
import 'package:outfit_battle/src/resources/custom_icons.dart';
import 'tabs/placeholder_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() {
    return new _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.blue),
    PlaceholderWidget(Colors.purple),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.cyan),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.swords_crossed, color: Colors.blue),
            title: Text(
              "Battle",
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
        ],
      ),
    );
  }

  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}
