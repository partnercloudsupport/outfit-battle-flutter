import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class BuildAuthenticationScaffold extends StatelessWidget {
  
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final ValueChanged<bool> handleSignIn;

  FirebaseUser fbUser;
  FirebaseUser firebaseUser;

  BuildAuthenticationScaffold({Key key, @required this.handleSignIn, this.fbUser, this.firebaseUser}) : super(key: key);

  void signInUser() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    FirebaseUser firebaseUser = await firebaseAuth.signInWithGoogle(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );

    print(firebaseUser.toString());

    handleSignIn(true);

  }

  void signOutUser() {
    
      googleSignIn.signOut();
      firebaseAuth.signOut();
    

    print("Signed out");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          firebaseUser == null
              ? Text("Please sign in")
              : Text(firebaseUser.displayName),
          RaisedButton(
            child: Text("Sign In"),
            onPressed: () {
              signInUser();
            },
          ),
          RaisedButton(
            child: Text("Sign Out"),
            onPressed: () {
              signOutUser();
            },
          ),
          Container(
            color: Colors.black,
            height: 24,
            child: Text(
              "Email sign up",
              style: TextStyle(color: Colors.white),
            ),
          ),
          RaisedButton(
            child: Text("Sign Up"),
            onPressed: () async {
              fbUser =
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: "victoreronmosele@gmail.com",
                password: "gorimakpacb",
              );

              print(fbUser.toString());
            },
          ),
          RaisedButton(
            child: Text("Sign In"),
            onPressed: () async {
              fbUser = await FirebaseAuth.instance.signInWithEmailAndPassword(
                email: "victoreronmosele@gmail.com",
                password: "gorimakpacb",
              );

              print("signed in");
              print(fbUser.toString());
            },
          ),
          RaisedButton(
            child: Text("Sign Out"),
            onPressed: () {
              firebaseAuth.signOut();
            },
          ),
        ],
      ),
    ));
  }
}
