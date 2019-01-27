import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/tabs/battles_tab.dart';
import 'package:outfit_battle/src/ui/tabs/notifications_tab.dart';
import 'package:outfit_battle/src/ui/tabs/profile_tab.dart';
import 'package:outfit_battle/src/ui/tabs/search_tab.dart';
import 'package:outfit_battle/src/ui/tabs/shop_tab.dart';
import 'package:outfit_battle/src/ui/widgets/bottom_nav_bar_items.dart';
import 'package:outfit_battle/src/ui/auth/authentication_screen.dart';


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

  var userIsSignedIn = false;

  void _changeSignInStatus(bool signInStatus) {
    setState(() {
      userIsSignedIn = signInStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    const leftPadding = 16.0;
    const rightPadding = 16.0;
    const topPadding = 8.0;
    const bottomPadding = 8.0;

    return !userIsSignedIn
        ? 
        BuildAuthenticationScaffold(
          handleSignIn: _changeSignInStatus,
        )
        : Scaffold(
            body: SafeArea(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(
                  leftPadding, topPadding, rightPadding, bottomPadding),
              child: _children[_currentIndex],
            )),
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
