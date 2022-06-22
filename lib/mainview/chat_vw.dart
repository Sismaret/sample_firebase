import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sample_firebase/helper/compare_date.dart';
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

    var fireStoreChat = FirebaseFirestore.instance
        .collection('Chat')
        .doc('GeneralDiscussion')
        .collection('DataChat');

    Stream<QuerySnapshot<Map<String, dynamic>>> dataChat = FirebaseFirestore
        .instance
        .collection('Chat')
        .doc('GeneralDiscussion')
        .collection('DataChat')
        .orderBy('timestamp', descending: true)
        .snapshots();

    var result;
    int counter = 0;

    return Scaffold(
      appBar: AppBar(title: const Text('Chat Discussion')),
      body: Column(
        children: [
          Expanded(
            child: Container(
                decoration: const BoxDecoration(color: Colors.grey),
                child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                    stream: dataChat,
                    builder: (BuildContext context, snapshot) {
                      if (snapshot.hasData) {
                        List<ChatModel> chatModel = [];
                        final result = snapshot.data!.docs;
                        for (var item in result) {
                          chatModel.add(ChatModel.fromJson(item.data()));
                        }

                        /** Test iterate data
                        // var resultChat = snapshot.data!.docs;
                        // counter = resultChat.length - 1;
                        // List<DateTime> dateTime = [];
                        // List<String> dateFormat = [];
                        // List<Timestamp> timestamp = [];

                        // for (var item in resultChat) {
                        //   timestamp.add(item.data()['timestamp']);
                        // }
                        // for (var item in timestamp) {
                        //   dateTime.add(item.toDate());
                        // }

                        // for (var item in dateTime) {
                        //   dateFormat.add(DateFormat.yMMMd().format(item));
                        // }

                        // for (var i = 0; i <= resultChat.length - 1; i++) {
                        //   if (counter == resultChat.length - 1) {
                        //     print(counter.toString() + 'Test');
                        //     print('==========================================');
                        //     print(
                        //         dateTime[counter].toString() + ' : ' + 'GROUP');
                        //     print('==========================================');
                        //   } else if (dateFormat.elementAt(counter) !=
                        //       dateFormat.elementAt(counter + 1)) {
                        //     print(counter.toString() + 'Test');
                        //     print('==========================================');
                        //     print(
                        //         dateTime[counter].toString() + ' : ' + 'GROUP');
                        //     print('==========================================');
                        //   } else {}

                        //   print(resultChat[counter]['chat']);
                        //   print(dateTime[counter]);
                        //   // print(counter);
                        //   counter--;
                        // } */

                        return ListView.builder(
                            reverse: true,
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: ((context, index) {
                              return ChatContent(
                                chat: chatModel.elementAt(index).content,
                                timeStamp: chatModel.elementAt(index).timeStamp,
                                user: chatModel.elementAt(index).user,
                                isEqualDate:
                                    index == snapshot.data!.docs.length - 1
                                        ? false
                                        : CompareDate.isEqualDate(
                                            chatModel
                                                .elementAt(index + 1)
                                                .timeStamp!
                                                .toDate(),
                                            chatModel
                                                .elementAt(index)
                                                .timeStamp!
                                                .toDate()),
                              );
                            }));
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    })),
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



// child: Container(
//               decoration: const BoxDecoration(color: Colors.grey),
//               child: FutureBuilder<QuerySnapshot>(
//                   future: queryChat.get(),
//                   builder: ((context, snapshot) {
//                     if (snapshot.connectionState == ConnectionState.done) {
//                       Iterable<Map<String, dynamic>> result = snapshot
//                           .data!.docs
//                           .map((e) => e.data() as Map<String, dynamic>);
//                       for (var item in result) {
//                         chatModel.add(ChatModel.fromJson(item));
//                       }
//                       return ListView.builder(
//                           reverse: true,
//                           itemCount: result.length,
//                           itemBuilder: ((context, index) {
//                             if (index > 0) {
//                               isEqualDate = CompareDate.isEqualDate(
//                                   chatModel
//                                       .elementAt(index)
//                                       .timeStamp!
//                                       .toDate(),
//                                   chatModel
//                                       .elementAt(index - 1)
//                                       .timeStamp!
//                                       .toDate());
//                             } else {
//                               isEqualDate = false;
//                             }
//                             return ChatContent(
//                               chat: chatModel.elementAt(index).content,
//                               timeStamp: chatModel.elementAt(index).timeStamp,
//                               user: chatModel.elementAt(index).user,
//                               isEqualDate: isEqualDate,
//                             );
//                           }));
//                     } else {
//                       return const Center(
//                         child: CircularProgressIndicator(),
//                       );
//                     }
//                   })),
//             ),