import 'package:flutter/cupertino.dart';
import 'package:sample_firebase/repository/subjects_repo.dart';

class SubjectServ {
  SubjectsRepo subjectsRepo = SubjectsRepo();

  List<Widget> getAllCardSubjects() {
    int counter = subjectsRepo.getaAllSubject().length;
    return subjectsRepo.getAllCardSubjects(counter);
  }
}
