import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ui/home_widget.dart';

class App extends StatelessWidget {
     @override
    Widget build(BuildContext context) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);    
    return MaterialApp(
        title: "Outfit Battle",
        home: Home(),
      );
  }
}