import 'package:firebase_database/firebase_database.dart';

class RealtimeDatabaseProvider {
  FirebaseDatabase _firebasedatabase = FirebaseDatabase.instance;

  Future<void> uploadImage(String imageUrl) {
    return _firebasedatabase
        .reference()
        .child("testUser")
        .set({'imageUrl': imageUrl});
  }

 
}
