import 'package:cloud_firestore/cloud_firestore.dart';

class ChatService {
  Future<void> updateFirestoreData(
      String collectionPath, String docPath, Map<String, dynamic> dataUpdate) {
    return FirebaseFirestore.instance
        .collection(collectionPath)
        .doc(docPath)
        .update(dataUpdate);
  }

  // Stream<QuerySnapshot> getChatMessage(String groupChatId, int limit){
  //   return FirebaseFirestore.instance
  //           .collection(FirebaseFirestore.instanceFor(app: app))
  // }
}
