import 'package:cloud_firestore/cloud_firestore.dart';

class ChatModel {
  ChatModel(
      {required this.content, required this.user, required this.timeStamp});

  String? content;
  String? user;
  Timestamp? timeStamp;

  factory ChatModel.fromJson(Map<String, dynamic> data) => ChatModel(
      content: data["chat"], user: data["user"], timeStamp: data['timestamp']);

  Map<String, dynamic> toJson() => {
        "chat": content,
        "user": user,
        "timestamp": timeStamp,
      };
}
