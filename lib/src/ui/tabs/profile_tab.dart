import 'package:flutter/material.dart';
import 'package:outfit_battle/src/ui/widgets/profile_tab_widgets/title_bar.dart';

class ProfileTab extends StatelessWidget {
  ProfileTab();

  @override
  Widget build(BuildContext context) {
    
    Container buildTitleBar() {
      return Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          children: <Widget>[
            Text("Profile",
                style: TextStyle(fontFamily: 'Amatic', fontSize: 32.0)),
          ],
        ),
      );
    }

    Container buildProfileLayout() {
      return Container(
        height: MediaQuery.of(context).size.height * 0.3,
        color: Colors.deepOrange,
      );
    }

    Container buildProfileBattlesLayout() {
      return Container(
        height: MediaQuery.of(context).size.height * 0.6,
        color: Colors.deepPurple,
        
      );
    }
    
  
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              buildTitleBar(),
              buildProfileLayout(),
              buildProfileBattlesLayout(),
            ],
          ),
        ],
      ),

      // Column(
      //     children: <Widget>[
      //       buildTitleBar(),
      //       Expanded(
      //         flex:6,
      //         child: Container(
      //           color: Colors.blue,
      //         ),
      //      ),
      //      Expanded(
      //         flex:12,
      //         child: Container(

      //           child: ListView.builder(
      //             itemCount: 50,
      //             itemBuilder: (BuildContext context, int index) {
      //             return Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Container(
      //                 height: 12.0,
      //                 color: Colors.amberAccent,
      //               ),
      //             );
      //           },

      //           ),
      //         ),
      //      ),
      //     ],
      //   ),
    );
  }
}
