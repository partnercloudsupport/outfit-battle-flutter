import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';

class RealtimeDatabaseProvider {
  FirebaseDatabase _firebasedatabase = FirebaseDatabase.instance;
  FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  Future<void> uploadImage(_imageUrl, _hashtagString) async {
    print("before upload");
    try {
      StorageUploadTask uploadTask =
          _firebaseStorage.ref().child("test").putFile(File(_imageUrl));
      var downloadUrl =
          await (await uploadTask.onComplete).ref.getDownloadURL();
      
      return _firebasedatabase
          .reference()
          .child("testUser")
          .set({'imageUrl': downloadUrl, 'hashtags': _hashtagString});
    } on Exception catch (e) {
      print("exception caught");
      print(e);
    }
  }
}
