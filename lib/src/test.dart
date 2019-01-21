import 'package:flutter/material.dart';

class TestClip extends StatelessWidget {
  TestClip();


  final List cards = new List.generate(20, (i) => Text("List number $i"));
  var _cpolor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  decoration: BoxDecoration(
                    // Box decoration takes a gradient
                    gradient: LinearGradient(
                      // Where the linear gradient begins and ends
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      // Add one stop for each color. Stops should increase from 0 to 1
                      stops: [0.55, 1.0],
                      colors: [
                        // Colors are easy thanks to Flutter's Colors class.
                        Colors.red,
                        Colors.orange,
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.location_on, color: Colors.white,),
                                DropdownButton<String>(
                              value: _color,
                                items: <String>["New York", 'Boston'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }
                                  
                                ).toList(),
                                onChanged: (_) {},
                            ) ,
                              ],
                            ),
                            

                            Icon(Icons.settings, color: Colors.white),
                          ],
                          ),
                        ),
                        Text("Where would you want to be?"),
                        
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Text(
                                    "Currently Watched Items",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  ),
                                  Text(
                                    "VIEW ALL(12)",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:8.0),
                                child:  Text("data"),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height * 0.48);

    var firstControlPoint = Offset(size.width * 0.2, size.height * 0.425);
    var firstEndPoint = Offset(size.width * 0.6, size.height * 0.465);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width * 0.80, size.height * 0.485);
    var secondEndPoint = Offset(size.width, size.height * 0.4);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
