import 'package:flutter/material.dart';
import 'dart:math';

class TestClip extends StatefulWidget {
  TestClip();

  @override
  TestClipState createState() {
    return new TestClipState();
  }
}

class TestClipState extends State<TestClip> {
  List _cities = [
    "Boston (BOS)",
    "New York City (JFK)",
  ];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentCity;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentCity = _dropDownMenuItems[0].value;
    super.initState();
  }

  // here we are creating the list needed for the DropDownButton
  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String city in _cities) {
      // here we are creating the drop down menu items, you can customize the item right here
      // but I'll just use a simple text for this
      items.add(new DropdownMenuItem(value: city, child: new Text(city)));
    }
    return items;
  }

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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  new Theme(
                                    data: Theme.of(context).copyWith(
                                        brightness: Brightness.dark,
                                        canvasColor: Colors.red),
                                    child: // Your Dropdown Code Here,(
                                        DropdownButton<String>(
                                      value: _currentCity,
                                      items: _dropDownMenuItems,
                                      onChanged: changedDropDownItem,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Icon(Icons.settings, color: Colors.white),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40.0),
                                  child: Center(
                                      child: Text(
                                    "Where would you want to be?",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                    ),
                                  )),
                                ),
                                FractionallySizedBox(
                                  widthFactor: 0.7,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25.0)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 24.0),
                                          child: Text(
                                            _currentCity,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.search),
                                          onPressed: () {},
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    FlatButton.icon(
                                      label: Text(
                                        "Flight",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      icon: Icon(
                                        Icons.flight_takeoff,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    ),
                                    FlatButton.icon(
                                      label: Text(
                                        "Hotels",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      icon: Icon(
                                        Icons.hotel,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        28.0, 0.0, 0.0, 8.0),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: FractionallySizedBox(
                                        heightFactor: 0.8,
                                        child: Container(
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 10,
                                            itemBuilder: (context, index) {
                                              return FractionallySizedBox(
                                                heightFactor: 0.9,
                                                child: Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15.0),
                                                          ),
                                                          color: Colors.white,
                                                          child: Container(
                                                            height: 200,
                                                            child: AspectRatio(
                                                              aspectRatio:
                                                                  3 / 4,
                                                              child: Stack(
                                                                children: <
                                                                    Widget>[
                                                                  Image.network(
                                                                    "https://loremflickr.com/300/400/city,landscape?lock=${1 + Random().nextInt(60)}",
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child:
                                                                        FractionallySizedBox(
                                                                      heightFactor:
                                                                          0.3,
                                                                      child:
                                                                          Container(
                                                                        color: Colors
                                                                            .black38,
                                                                        child:
                                                                            Row(
                                                                          children: <
                                                                              Widget>[
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Column(
                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                children: <Widget>[
                                                                                  Text("Las Vegas", style: TextStyle(color: Colors.white, fontSize: 16),),
                                                                                  Text("Feb, 2019", style: TextStyle(color: Colors.white),),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Flexible(
                                                                              flex: 3,
                                                                              child: Container(
                                                                                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
                                                                                  // color: Colors.white,
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsets.all(4.0),
                                                                                    child: Text(
                                                                                      "45%",
                                                                                    ),
                                                                                  )),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            "2250",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            "2250",
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors
                                                                    .black45),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
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

  void changedDropDownItem(String selectedCity) {
    print("Selected city $selectedCity, we are going to refresh the UI");
    setState(() {
      _currentCity = selectedCity;
    });
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
