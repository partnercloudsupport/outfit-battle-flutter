import 'package:flutter/material.dart';
import 'package:outfit_battle/src/resources/custom_icons.dart';

Expanded buildBattleButton(context) {
    return Expanded(
        flex: 2,
        child: FloatingActionButton(
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
            Navigator.push(context, CustomDialogRoute(
              builder:(BuildContext context) {
                return Center(child: AlertDialog( content: Container(height: 400, width: 50, child: Text("Upload screen"),),),);
              },
              ),
                );

          },
                ),
        );
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
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return builder(context);
  }

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: CurvedAnimation(
        parent: animation,
        curve: Curves.easeOut
      ),
      child: child,
    );
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  }