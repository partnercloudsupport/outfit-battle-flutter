import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/flutter_advanced_networkimage.dart';
import 'package:flutter_advanced_networkimage/transition_to_image.dart';

Expanded battleImage(List<String> hashtagTextList, int index, String battleImageUrl) {
  return Expanded(
                              flex: 1,
                              child: Card(
                                child: Container(
                                  child: TransitionToImage(
                                    AdvancedNetworkImage(
                                      battleImageUrl,
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
                            );
}