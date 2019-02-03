import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:outfit_battle/src/blocs/upload_bloc_provider.dart';
import 'ui/home_widget.dart';

class App extends StatelessWidget {
     @override
    Widget build(BuildContext context) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);    
    return UploadBlocProvider(
          child: MaterialApp(
          title: "Outfit Battle",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
          fontFamily: 'Josefin',),
          home: Home(),
        ),
    );
  }
}
