import 'package:flutter/material.dart';
import 'upload_bloc.dart';
export 'upload_bloc_provider.dart';
class UploadBlocProvider extends InheritedWidget{
  final bloc = UploadBloc();

  UploadBlocProvider({Key key, Widget child}) : super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static UploadBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(UploadBlocProvider) as UploadBlocProvider).bloc;
  }
}