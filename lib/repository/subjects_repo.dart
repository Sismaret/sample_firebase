import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_assets.dart';
import 'package:sample_firebase/widgets/card_lesson.dart';

class SubjectsRepo {
  //Data

  String? subject;
  String? imageLoc;
  List<Widget>? cardSubjects = [];

  List<String> subjects = ['Math 1', 'Fisika', 'Kimia'];
  List<String> imageLocs = [
    AppAssets.iconFisika,
    AppAssets.iconKimia,
    AppAssets.iconHome
  ];

  //Temp
  void goToLesson() {}

  String getSubject(int index) {
    return subjects[index];
  }

  List<String> getaAllSubject() {
    return subjects;
  }

  String getImageLoc(int index) {
    return imageLocs[index];
  }

  List<String> getAllImageLoc() {
    return imageLocs;
  }

  List<Widget> getAllCardSubjects(int max) {
    int counter = 1;

    for (var i = 0; i < max; i++) {
      cardSubjects!.add(CardLesson(
          goToLesson: goToLesson,
          imageLoc: imageLocs[i],
          subject: subjects[i],
          progressPackage: '0/50'));
    }
    print(counter);
    return cardSubjects!;
  }
}
