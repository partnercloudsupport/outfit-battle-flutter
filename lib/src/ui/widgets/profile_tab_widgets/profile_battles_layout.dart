import 'package:flutter/material.dart';

Container buildProfileBattlesLayout(context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.5,
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
                text: "Present battles",
              ),
              Tab(
                text: "Past battles",
              ),
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
  return GridView.count(
    scrollDirection: Axis.horizontal,
    crossAxisCount: 1,
    children: List.generate(100, (index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.teal,
          child: Center(
            child: Text(
              "Item $index",
              style: TextStyle(fontSize: 24, fontFamily: 'Amatic'),
            ),
          ),
        ),
      );
    }),
  );
}
