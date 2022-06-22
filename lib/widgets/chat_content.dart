import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sample_firebase/constants/app_labels.dart';
import 'package:sample_firebase/helper/compare_date.dart';

class ChatContent extends StatelessWidget {
  String? chat;
  Timestamp? timeStamp;
  String? user;
  bool? isEqualDate;

  ChatContent(
      {Key? key,
      required this.chat,
      required this.timeStamp,
      required this.user,
      required this.isEqualDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormatter = DateFormat('yyyy-MM-dd');
    DateTime toDay = DateTime.now();
    bool isToday = CompareDate.isEqualDate(timeStamp!.toDate(), toDay);
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          isEqualDate == false
              ? Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: isToday
                      ? Text(
                          'To Day',
                          style: AppLabels.titleFormBlack,
                        )
                      : Text(dateFormatter.format(timeStamp!.toDate())),
                )
              : Container(),
          Align(
            alignment: user == 'sismaret'
                ? Alignment.bottomRight
                : Alignment.bottomLeft,
            child: Column(
              crossAxisAlignment: user == 'sismaret'
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                Text(
                  user ?? '',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 2,
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      borderRadius: user == 'sismaret'
                          ? const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(15))
                          : const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(10)),
                      color: Colors.amberAccent),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(chat ?? ''),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        DateFormat.jm().format(timeStamp!.toDate()),
                        style: const TextStyle(
                            fontSize: 10, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
