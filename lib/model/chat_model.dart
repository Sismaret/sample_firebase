class ChatModel {
  ChatModel({
    this.content,
    this.user,
  });

  String? content;
  String? user;

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        content: json["content"],
        user: json["user"],
      );

  Map<String, dynamic> toJson() => {
        "content": content,
        "user": user,
      };
}
