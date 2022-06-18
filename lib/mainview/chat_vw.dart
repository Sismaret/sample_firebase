import 'dart:collection';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:sample_firebase/model/chat_model.dart';
import 'package:sample_firebase/widgets/chat_content.dart';

class ChatWv extends StatefulWidget {
  const ChatWv({Key? key}) : super(key: key);

  @override
  State<ChatWv> createState() => _ChatWvState();
}

class _ChatWvState extends State<ChatWv> {
  @override
  Widget build(BuildContext context) {
    TextEditingController chatController = TextEditingController();
    var fireStoreChat = FirebaseFirestore.instance.collection('chats');
    var queryChat = fireStoreChat.orderBy('timestamp', descending: true);
    List<ChatModel> chatModel = [];
    return Scaffold(
      appBar: AppBar(title: const Text('Chat Discussion')),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.grey),
              child: FutureBuilder<QuerySnapshot>(
                  future: queryChat.get(),
                  builder: ((context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      Iterable<Map<String, dynamic>> result = snapshot
                          .data!.docs
                          .map((e) => e.data() as Map<String, dynamic>);
                      for (var item in result) {
                        chatModel.add(ChatModel.fromJson(item));
                      }
                      return ListView.builder(
                          reverse: true,
                          itemCount: result.length,
                          itemBuilder: ((context, index) {
                            return ChatContent(
                              chat: chatModel.elementAt(index).content,
                              timeStamp: chatModel.elementAt(index).timeStamp,
                              user: chatModel.elementAt(index).user,
                            );
                          }));
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  })),
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_box,
                    color: Colors.blueAccent,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Row(children: [
                      Expanded(
                        child: TextField(
                          controller: chatController,
                          decoration: const InputDecoration(
                              hintText: 'Message ...',
                              suffixIcon: Icon(
                                Icons.camera_alt,
                                color: Colors.blueAccent,
                              )),
                        ),
                      ),
                    ]),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      if (chatController.text.isNotEmpty) {
                        fireStoreChat.add({
                          'chat': chatController.text,
                          'user': 'sismaret',
                          'timestamp': DateTime.now(),
                        });
                        chatController.text = '';
                      }
                    },
                    icon: const Icon(
                      Icons.send,
                      color: Colors.blueAccent,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
