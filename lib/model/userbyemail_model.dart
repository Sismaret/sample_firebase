// To parse this JSON data, do
//
//     final userbyEmail = userbyEmailFromJson(jsonString);

import 'dart:convert';

UserbyEmail userbyEmailFromJson(String str) =>
    UserbyEmail.fromJson(json.decode(str));

String userbyEmailToJson(UserbyEmail data) => json.encode(data.toJson());

class UserbyEmail {
  UserbyEmail({
    this.status,
    this.message,
    this.data,
  });

  int? status;
  String? message;
  Data? data;

  factory UserbyEmail.fromJson(Map<String, dynamic> json) => UserbyEmail(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data!.toJson(),
      };
}

class Data {
  Data({
    this.iduser,
    this.userName,
    this.userEmail,
    this.userFoto,
    this.userAsalSekolah,
    this.dateCreate,
    this.jenjang,
    this.userGender,
    this.userStatus,
    this.kelas,
  });

  String? iduser;
  String? userName;
  String? userEmail;
  String? userFoto;
  String? userAsalSekolah;
  DateTime? dateCreate;
  String? jenjang;
  String? userGender;
  String? userStatus;
  String? kelas;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        iduser: json["iduser"],
        userName: json["user_name"],
        userEmail: json["user_email"],
        userFoto: json["user_foto"],
        userAsalSekolah: json["user_asal_sekolah"],
        dateCreate: DateTime.parse(json["date_create"]),
        jenjang: json["jenjang"],
        userGender: json["user_gender"],
        userStatus: json["user_status"],
        kelas: json["kelas"],
      );

  Map<String, dynamic> toJson() => {
        "iduser": iduser,
        "user_name": userName,
        "user_email": userEmail,
        "user_foto": userFoto,
        "user_asal_sekolah": userAsalSekolah,
        "date_create": dateCreate!.toIso8601String(),
        "jenjang": jenjang,
        "user_gender": userGender,
        "user_status": userStatus,
        "kelas": kelas,
      };
}
