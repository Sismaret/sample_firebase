class UserRepo {
  //TempData
  Map<String, String> UserData = {
    'fullName': 'Sismaret',
    'emailAddress': 'sismaret@gmail.com',
    'gender': 'Pria',
    'level': 'Kelas 6 SD',
    'schoolName': 'Muhammadiya 12 Pamulang'
  };

  String? _fullName;
  String? _emailAddress;
  String? _gender;
  String? _level;
  String? _schoolName;

  String getFullName(String? fullName) {
    fullName = UserData['fullName'];
    _fullName = fullName;
    return _fullName!;
  }

  String getEmailAddress(String email) {
    _emailAddress = email;
    return _emailAddress!;
  }

  String getGender(String gender) {
    _gender = gender;
    return _gender!;
  }

  String getLevel(String level) {
    _level = level;
    return _level!;
  }

  String getSchoolName(String schoolName) {
    _schoolName = schoolName;
    return _schoolName!;
  }

  Map<String, String> getAllUserData() {
    return UserData;
  }
}
