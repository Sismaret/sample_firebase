import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_colors.dart';

class ChatWv extends StatefulWidget {
  const ChatWv({Key? key}) : super(key: key);

  @override
  State<ChatWv> createState() => _ChatWvState();
}

class _ChatWvState extends State<ChatWv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat Discussion')),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(color: AppColors.backColor),
            ),
          ),
          Row(
            children: [
              SizedBox(
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  height: 30,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                      const TextField(
                        decoration:
                            InputDecoration(hintText: 'Type in here ...'),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
