import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sample_firebase/repository/user_repo.dart';

class UserServ {
  String? _fullName;
  String? _emailAddress;
  String? _gender;
  String? _level;
  String? _schoolName;

  UserRepo userRepo = UserRepo();

  Map<String, String> getUserData() {
    return userRepo.getAllUserData();
  }

  String? getFullName() {
    _fullName = userRepo.getFullName('Sismaret');
    return _fullName;
  }

  void getGoogleAccount() {
    final user = FirebaseAuth.instance.currentUser;
  }

  Map<String, String> getUserGoogle = {};
}
