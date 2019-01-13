import 'package:flutter/material.dart';

Expanded buildVersusIcon(){
      return Expanded(
        flex: 2,
        child: Container(
          constraints: BoxConstraints(
            maxHeight: double.infinity,
            maxWidth: double.infinity,
            minWidth: double.infinity,
            minHeight: double.infinity),
              child: FractionallySizedBox(
                alignment: Alignment(0.0, 0.0),
                widthFactor: 0.5,
                heightFactor: 0.5,
                  child: Stack(
                    alignment: Alignment.center,
                      children: <Widget> [Container(
                      decoration: new BoxDecoration(
                        color: Colors.black87,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Text("VS",
                    style: TextStyle(color: Colors.white),),
                  ],
      ),      
      ),
    ),
    );
  }