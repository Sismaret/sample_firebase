import 'package:flutter/material.dart';
import 'package:sample_firebase/widgets/card_lesson.dart';

class LessonsVw extends StatefulWidget {
  const LessonsVw({Key? key}) : super(key: key);

  @override
  State<LessonsVw> createState() => _LessonsVwState();
}

class _LessonsVwState extends State<LessonsVw> {
  void goToLesson() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choose lesson')),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(children: [
          Expanded(
            child: CardLesson(
              goToLesson: goToLesson,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: CardLesson(
              goToLesson: goToLesson,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: CardLesson(
              goToLesson: goToLesson,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: CardLesson(
              goToLesson: goToLesson,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: CardLesson(
              goToLesson: goToLesson,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: CardLesson(
              goToLesson: goToLesson,
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ]),
      ),
    );
  }
}