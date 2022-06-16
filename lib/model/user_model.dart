class User {
  String? fullName;
  String? emailAddress;
  String? gender;
  String? level;
  String? shoolName;

  String? get getFullName => fullName;

  set setFullName(String? fullName) => this.fullName = fullName;

  get getEmailAddress => emailAddress;

  set setEmailAddress(emailAddress) => this.emailAddress = emailAddress;

  get getGender => gender;

  set setGender(gender) => this.gender = gender;

  get getLevel => level;

  set setLevel(level) => this.level = level;

  get getShoolName => shoolName;

  set setShoolName(shoolName) => this.shoolName = shoolName;
}
