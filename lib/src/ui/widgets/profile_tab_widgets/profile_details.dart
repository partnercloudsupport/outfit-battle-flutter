import 'package:flutter/material.dart';

Column buildProfileDetails() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildNumberOfBattles(),
            buildNumberOfVictories(),
            buildNumberOfFollowers(),
          ],
        ),
      ),
      SizedBox(
        width: double.infinity,
        child: OutlineButton(
          color: Colors.white,
          highlightedBorderColor: Colors.black26,
          child: Text(
            "Edit profile",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onPressed: () {},
        ),
      ),
    ],
  );
}

Column buildNumberOfFollowers() {
  return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "300",
                style: (TextStyle(
                  fontSize: 24,
                )),
              ),
              Text(
                "followers",
                style: (TextStyle(
                  color: Colors.black38,
                )),
              ),
            ],
          );
}

Column buildNumberOfVictories() {
  return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "7",
                style: (TextStyle(
                  fontSize: 24,
                )),
              ),
              Text(
                "victories",
                style: (TextStyle(
                  color: Colors.black38,
                )),
              ),
            ],
          );
}

Column buildNumberOfBattles() {
  return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "47",
                style: (TextStyle(
                  fontSize: 24,
                )),
              ),
              Text(
                "battles",
                style: (TextStyle(
                  color: Colors.black38,
                )),
              ),
            ],
          );
}
