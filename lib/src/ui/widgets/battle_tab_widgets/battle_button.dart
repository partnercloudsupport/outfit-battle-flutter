import 'package:flutter/material.dart';
import 'package:outfit_battle/src/resources/custom_icons.dart';

Expanded buildBattleButton(context) {
  return Expanded(
    flex: 2,
    child: Hero(
      tag: 'test',
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

class BattleUploadLayout extends StatelessWidget {
  const BattleUploadLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          color: Colors.black54,
          child: Center(
              child: Text(
            "data",
            style: TextStyle(color: Colors.white),
          ))),
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
      tag: 'test',
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
