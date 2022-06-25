// To parse this JSON data, do
//
//     final question = questionFromJson(jsonString);

import 'dart:convert';

Question questionFromJson(String str) => Question.fromJson(json.decode(str));

String questionToJson(Question data) => json.encode(data.toJson());

class Question {
  Question({
    this.status,
    this.message,
    this.data,
  });

  int? status;
  String? message;
  List<Datum>? data;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.exerciseIdFk,
    this.bankQuestionId,
    this.questionTitle,
    this.questionTitleImg,
    this.optionA,
    this.optionAImg,
    this.optionB,
    this.optionBImg,
    this.optionC,
    this.optionCImg,
    this.optionD,
    this.optionDImg,
    this.optionE,
    this.optionEImg,
    this.studentAnswer,
  });

  String? exerciseIdFk;
  String? bankQuestionId;
  String? questionTitle;
  dynamic questionTitleImg;
  String? optionA;
  dynamic optionAImg;
  String? optionB;
  dynamic optionBImg;
  String? optionC;
  dynamic optionCImg;
  String? optionD;
  dynamic optionDImg;
  String? optionE;
  dynamic optionEImg;
  StudentAnswer? studentAnswer;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        exerciseIdFk: json["exercise_id_fk"],
        bankQuestionId: json["bank_question_id"],
        questionTitle: json["question_title"],
        questionTitleImg: json["question_title_img"],
        optionA: json["option_a"],
        optionAImg: json["option_a_img"],
        optionB: json["option_b"],
        optionBImg: json["option_b_img"],
        optionC: json["option_c"],
        optionCImg: json["option_c_img"],
        optionD: json["option_d"],
        optionDImg: json["option_d_img"],
        optionE: json["option_e"],
        optionEImg: json["option_e_img"],
        studentAnswer: studentAnswerValues.map![json["student_answer"]],
      );

  Map<String, dynamic> toJson() => {
        "exercise_id_fk": exerciseIdFk,
        "bank_question_id": bankQuestionId,
        "question_title": questionTitle,
        "question_title_img": questionTitleImg,
        "option_a": optionA,
        "option_a_img": optionAImg,
        "option_b": optionB,
        "option_b_img": optionBImg,
        "option_c": optionC,
        "option_c_img": optionCImg,
        "option_d": optionD,
        "option_d_img": optionDImg,
        "option_e": optionE,
        "option_e_img": optionEImg,
        "student_answer": studentAnswerValues.reverse[studentAnswer],
      };
}

enum StudentAnswer { X }

final studentAnswerValues = EnumValues({"X": StudentAnswer.X});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
