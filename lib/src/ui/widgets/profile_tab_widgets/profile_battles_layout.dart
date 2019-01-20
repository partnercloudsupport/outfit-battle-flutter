import 'package:flutter/material.dart';

Container buildProfileBattlesLayout(context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.6 - 24,
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TabBar(
            indicatorColor: Colors.black87,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black38,
            tabs: [
              Tab(
                text: "Past battles",
              ),
              Tab(text: "Present battles"),
            ],
          ),
          Expanded(
            flex: 1,
            child: TabBarView(
              children: <Widget>[
                buildPresentBattlesLayout(),
                buildPastBattlesLayout(),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildPresentBattlesLayout() {
  return Center(
    child: buildBattlesLayout(),
  );
}

Widget buildPastBattlesLayout() {
  return Center(
    child: buildBattlesLayout(),
  );
}

Widget buildBattlesLayout() {
  return Text("Present battles");
}
