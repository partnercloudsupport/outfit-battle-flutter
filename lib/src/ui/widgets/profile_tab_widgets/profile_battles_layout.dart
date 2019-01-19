import 'package:flutter/material.dart';

Padding buildProfileBattlesLayout() {
  
  return Padding(
    padding: const EdgeInsets.only(top:8.0),
    child: Column(
      children: <Widget>[
        TabBar(
          indicatorColor: Colors.black87,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black38,
            tabs: [
               Tab(text: "Past battles",),
               Tab(text: "Present battles"),
            ],
          ),
      ],
    ),
  );
}


// Container buildProfileBattlesLayout() {
//   return Container(
//     color: Colors.deepPurple,
//     child: ListView.builder(
//         physics: ClampingScrollPhysics(),
//         shrinkWrap: true,
//         itemCount: 50,
//         itemBuilder: (BuildContext context, int index) {
//           return new Text(
//             index.toString(),
//             style: TextStyle(fontSize: 300),
//           );
//         }),
//   );
// }
