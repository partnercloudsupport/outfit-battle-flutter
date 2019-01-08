import 'package:flutter/material.dart';
import 'ui/home_widget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        title: "Outfit Battle",
        home: Home(),
      );
  }
}