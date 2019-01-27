import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/tabs/battles_tab.dart';
import 'package:outfit_battle/src/ui/tabs/notifications_tab.dart';
import 'package:outfit_battle/src/ui/tabs/profile_tab.dart';
import 'package:outfit_battle/src/ui/tabs/search_tab.dart';
import 'package:outfit_battle/src/ui/tabs/shop_tab.dart';
import 'package:outfit_battle/src/ui/widgets/bottom_nav_bar_items.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

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

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSigIn = GoogleSignIn();


  var userIsSignedIn = false;
  FirebaseUser _firebaseUser;

  void signInUser() async {
    GoogleSignInAccount googleSignInAccount = await googleSigIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
    
    FirebaseUser firebaseUser = await firebaseAuth.signInWithGoogle(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );

    print(firebaseUser.toString());

    setState(() {
          userIsSignedIn = false;
          _firebaseUser = firebaseUser;
          
        });
  }

  void signOutUser() {
    googleSigIn.signOut();
    firebaseAuth.signOut();
    print("Signed out");
  }

  @override
  Widget build(BuildContext context) {
    const leftPadding = 16.0;
    const rightPadding = 16.0;
    const topPadding = 8.0;
    const bottomPadding = 8.0;

    return Scaffold(
      body: !userIsSignedIn
      ?
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
             _firebaseUser == null
             ?
             Text("Please sign in")
             :
             Text(_firebaseUser.displayName)
             ,
            RaisedButton(
              child:Text("Sign In"), 
              onPressed: (){
                signInUser();
              },
            ),
            RaisedButton(
              child:Text("Sign Out"), 
              onPressed: (){
                signOutUser();
              },
            ),
          ],
        ),
      )
      :
      SafeArea(child: Padding(
        padding: const EdgeInsets.fromLTRB(leftPadding, topPadding, rightPadding, bottomPadding),
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
