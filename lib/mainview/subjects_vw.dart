import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_assets.dart';
import 'package:sample_firebase/mainview/subject_vw.dart';
import 'package:sample_firebase/services/subject_serv.dart';
import 'package:sample_firebase/widgets/card_lesson.dart';

class SubjectsVw extends StatefulWidget {
  const SubjectsVw({Key? key}) : super(key: key);

  @override
  State<SubjectsVw> createState() => _SubjectsVwState();
}

class _SubjectsVwState extends State<SubjectsVw> {
  void goToLesson() {}

  @override
  Widget build(BuildContext context) {
    SubjectServ subjectServ = SubjectServ();

    return Scaffold(
      appBar: AppBar(title: const Text('Choose lesson')),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(children: [...subjectServ.getAllCardSubjects()]),
      ),
    );
  }
}
