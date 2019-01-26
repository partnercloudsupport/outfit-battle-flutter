import 'package:flutter/material.dart';
import 'package:outfit_battle/src/resources/custom_icons.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';
import 'package:image_cropper/image_cropper.dart';

Expanded buildBattleButton(context) {
  return Expanded(
    flex: 2,
    child: Hero(
      tag: 'battle-button',
      child: FloatingActionButton(
        // label: Text("Battle"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 0.0),
          child: Icon(
            CustomIcons.swords_crossed,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            CustomDialogRoute(builder: (BuildContext context) {
              return Center(
                child: AlertDialog(
                  content: Container(
                    height: MediaQuery.of(context).size.height * .7,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        new BattleUploadLayout(),
                        SizedBox(
                          height: 10,
                        ),
                        BattleUploadButton(),
                      ],
                    ),
                  ),
                ),
              );
            }),
          );
        },
      ),
    ),
  );
}

class BattleUploadLayout extends StatefulWidget {
  BattleUploadLayout({
    Key key,
  }) : super(key: key);

  @override
  BattleUploadLayoutState createState() {
    return new BattleUploadLayoutState();
  }
}

class BattleUploadLayoutState extends State<BattleUploadLayout> {
  TextEditingController hashtagController = TextEditingController();

  File _image;


  Future getImageFromCamera(context) async {
    print("tapped");
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    _cropImage(image);
  }

  Future<Null> _cropImage(File imageFile) async {
    File croppedFile = await ImageCropper.cropImage(
      sourcePath: imageFile.path,
      ratioX: 3.0,
      ratioY: 4.0,
      toolbarColor: Colors.black,
      toolbarTitle: "Crop Photo",
    );

    setState(() {
      _image = croppedFile;
    });

    Navigator.pop(context);

  }

  Future getImageFromGallery(context) async {
    print("tapped");
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    _cropImage(image);
  }

  openImageOptions() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            children: <Widget>[
              SimpleDialogOption(
                child: new Text('Take photo'),
                onPressed: () {
                  getImageFromCamera(context);
                },
              ),
              SimpleDialogOption(
                child: new Text('Choose existing photo'),
                onPressed: () {
                  getImageFromGallery(context);
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 3 / 4,
              child: _image == null
                  ? Material(
                      child: InkWell(
                        onTap: () {
                          // getImage();
                          openImageOptions();
                        },
                        child: Container(
                          child: Center(
                              child: Icon(
                                Icons.camera_alt,
                                size: 48,
                                color: Colors.black,
                              )),
                        ),
                      ),
                    )
                  : Stack(
                      children: <Widget>[
                        Stack(children: <Widget>[
                          Container(
                            foregroundDecoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Colors.black12,
                                  Colors.black12
                                ],
                                stops: [0.1, 0.5],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: Image.file(_image),
                          ),
                        ]),
                        Center(
                          child: InkWell(
                            onTap: () {
                              // getImage();
                              openImageOptions();
                            },
                            child: Icon(
                              Icons.camera_alt,
                              size: 48,
                              color: Colors.white30,
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            onEditingComplete: (){},
            onSubmitted: (value) {
              if (value.isNotEmpty) {
                var words = value.replaceAll('#', '');

                var splitValues = words.split(" ");
                var hashtagList = <String>[];

                splitValues.forEach((word) {
                  var hashtaggedWord = "#" + word + " ";
                  hashtagList.add(hashtaggedWord);
                });

                print(hashtagList.join().toString());
                
                hashtagController.text = hashtagList.join().trim();
                
                
              }
            },
            onChanged: (value){
            },
            controller: hashtagController,
            maxLines: null,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Hashtag(s)",
              helperText: "Separate hashtags with space",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black87),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BattleUploadButton extends StatelessWidget {
  const BattleUploadButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'battle-button',
      child: FloatingActionButton.extended(
        label: Text("Battle"), //
        onPressed: () {},
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        icon: Row(
          children: <Widget>[
            Text("30"),
            SizedBox(width: 2),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
              child: Icon(
                CustomIcons.coin,
                color: Colors.white,
                size: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDialogRoute<T> extends PageRoute<T> {
  CustomDialogRoute({this.builder}) : super();

  final WidgetBuilder builder;

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  Color get barrierColor => Colors.black54;

  @override
  // TODO: implement barrierLabel
  String get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return builder(context);
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: CurvedAnimation(parent: animation, curve: Curves.easeOut),
      child: child,
    );
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);
}
