import 'realtime_database_provider.dart';

class Repository {
  final _realtimeDatabaseProvider = RealtimeDatabaseProvider();

  Future<void> uploadGoal(imageUrl, hashtagString) =>
      _realtimeDatabaseProvider.uploadImage(imageUrl,  hashtagString);

}