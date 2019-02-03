import 'realtime_database_provider.dart';

class Repository {
  final _realtimeDatabaseProvider = RealtimeDatabaseProvider();

  Future<void> uploadGoal(String imageUrl) =>
      _realtimeDatabaseProvider.uploadImage(imageUrl);

}