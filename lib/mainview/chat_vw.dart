import 'package:cloud_firestore/cloud_firestore.dart';
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
    var db = FirebaseFirestore.instance;
    final docRef = db.collection('chats');
    ChatModel chatModel = ChatModel();
    // Test
    Timestamp test;
    return Scaffold(
      appBar: AppBar(title: const Text('Chat Discussion')),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.grey),
              child: FutureBuilder<QuerySnapshot>(
                  future: docRef.get(),
                  builder: ((context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return ListView.builder(
                          reverse: true,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: ((context, index) {
                            return ChatContent(
                              chat: snapshot.data!.docs[index]['chat'],
                              timeStamp: snapshot.data!.docs[index]
                                  ['timestamp'],
                              user: snapshot.data!.docs[index]['user'],
                            );
                          }));
                    }
                  })),
            ),
          ),
          SizedBox(
            child: Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    // print(Timestamp(test.seconds, test.nanoseconds));
                  },
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
                        docRef.add({
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
