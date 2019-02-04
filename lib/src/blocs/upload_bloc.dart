import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class UploadBloc {
  final _repository = Repository();
  final _imageUrl = BehaviorSubject<dynamic>();
  final _hashtagString = BehaviorSubject<String>();

  void submit() {
    _repository.uploadGoal(_imageUrl.value, _hashtagString.value);
  }

  void dispose() async {
    await _imageUrl.drain();
    _imageUrl.close();
    await _hashtagString.drain();
    _hashtagString.close();
  }

  Function(String) get setHashtag => _hashtagString.sink.add;

  Function(dynamic) get setImageUrl => _imageUrl.sink.add;



}
