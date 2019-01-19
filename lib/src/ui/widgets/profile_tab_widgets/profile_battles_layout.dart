import 'package:flutter/material.dart';

Container buildProfileBattlesLayout() {
  return Container(
    color: Colors.deepPurple,
    child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return new Text(
            index.toString(),
            style: TextStyle(fontSize: 300),
          );
        }),
  );
}
