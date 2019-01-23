import 'package:flutter/material.dart';

Expanded buildVersusIcon() {
  return Expanded(
    flex: 2,
    child: Container(
      constraints: BoxConstraints(
          maxHeight: double.infinity,
          maxWidth: double.infinity,
          minWidth: double.infinity,
          minHeight: double.infinity),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          Expanded(
            flex: 2,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  decoration: new BoxDecoration(
                    color: Colors.black87,
                    shape: BoxShape.circle,
                  ),
                ),
                Text(
                  "VS",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 2,),
          Expanded(
            flex: 1,
            child: Text("1 hr ago", style: TextStyle(color: Colors.black54),),
          ),
        ],
      ),
    ),
  );
}
