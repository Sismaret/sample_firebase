import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatContent extends StatelessWidget {
  String? chat;
  Timestamp? timeStamp;
  String? user;

  ChatContent(
      {Key? key,
      required this.chat,
      required this.timeStamp,
      required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user ?? '',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 2,
            ),
            Flex(
              direction: Axis.horizontal,
              children: [
                Container(
                  padding: const EdgeInsets.all(7),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(10)),
                      color: Colors.amberAccent),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(chat ?? ''),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        // DateFormat.jm().format(timeStamp)

                        timeStamp.toString(),
                        style: const TextStyle(
                            fontSize: 10, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
