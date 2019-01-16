import 'package:flutter/material.dart';

Container buildPopularHashtagsListLayout() {
  return Container(
    constraints: BoxConstraints(
        maxHeight: double.infinity,
        maxWidth: double.infinity,
        minWidth: double.infinity,
        minHeight: double.infinity),
    child: ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
          child: Column(
            children: <Widget>[
              Text(
                "#sundayChilling",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return AspectRatio(
                      aspectRatio: 4 / 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 6,
                                child: Container(
                                  color: Colors.blue,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },

                  // child: Center(child: Text(index.toString())),
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}

