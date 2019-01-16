import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/flutter_advanced_networkimage.dart';
import 'package:flutter_advanced_networkimage/transition_to_image.dart';

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
                // style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return AspectRatio(
                      aspectRatio: 3 / 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Card(
                                  child: Container(
                                    child: TransitionToImage(
                                      AdvancedNetworkImage(
                                        "https://loremflickr.com/300/400/beautiful girl?lock=3",
                                        loadedCallback: () {
                                          // showVoteButton();
                                          print('Image loaded!');
                                        },
                                        loadFailedCallback: () {
                                          // hideVoteButton();
                                          print('Image load failed!');
                                        },
                                        useDiskCache: true,
                                      ),
                                      loadingWidget:
                                          const CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.black45),
                                      ),
                                      fit: BoxFit.cover,
                                      placeholder: const Icon(Icons.refresh),
                                      enableRefresh: true,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Card(
                                  child: Container(
                                    child: TransitionToImage(
                                      AdvancedNetworkImage(
                                        "https://loremflickr.com/300/400/model?beautiful ladys=54",
                                        loadedCallback: () {
                                          // showVoteButton();
                                          print('Image loaded!');
                                        },
                                        loadFailedCallback: () {
                                          // hideVoteButton();
                                          print('Image load failed!');
                                        },
                                        useDiskCache: true,
                                      ),
                                      loadingWidget:
                                          const CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.black45),
                                      ),
                                      fit: BoxFit.cover,
                                      placeholder: const Icon(Icons.refresh),
                                      enableRefresh: true,
                                    ),
                                  ),
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
