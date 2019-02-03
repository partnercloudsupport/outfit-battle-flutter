import '../resources/repository.dart';
// import 'package:rxdart/rxdart.dart';

class UploadBloc {
  final _repository = Repository();

  void submit(String imageUrl) {
    _repository.uploadGoal(imageUrl);
  }

}
