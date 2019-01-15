import 'package:flutter/material.dart';

Expanded buildTitleBar() {
    return Expanded(
      flex: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Search",
              style: TextStyle(fontFamily: 'Amatic', fontSize: 32.0)),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          )
        ],
      ),
    );
}