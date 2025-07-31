// To parse this JSON data, do
//
//     final faQsModel = faQsModelFromJson(jsonString);

import 'dart:convert';

FaQsModel faQsModelFromJson(String str) => FaQsModel.fromJson(json.decode(str));

String faQsModelToJson(FaQsModel data) => json.encode(data.toJson());

class FaQsModel {
  final int? success;
  final int? code;
  final String? message;
  final List<Body>? body;
  final Meta? meta;

  FaQsModel({
    this.success,
    this.code,
    this.message,
    this.body,
    this.meta,
  });

  factory FaQsModel.fromJson(Map<String, dynamic> json) => FaQsModel(
    success: json["success"],
    code: json["code"],
    message: json["message"],
    body: json["body"] == null ? [] : List<Body>.from(json["body"]!.map((x) => Body.fromJson(x))),
    meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "code": code,
    "message": message,
    "body": body == null ? [] : List<dynamic>.from(body!.map((x) => x.toJson())),
    "meta": meta?.toJson(),
  };
}

class Body {
  final int? id;
  final String? question;
  final String? answer;
  final dynamic category;

  Body({
    this.id,
    this.question,
    this.answer,
    this.category,
  });

  factory Body.fromJson(Map<String, dynamic> json) => Body(
    id: json["id"],
    question: json["question"],
    answer: json["answer"],
    category: json["category"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "question": question,
    "answer": answer,
    "category": category,
  };
}

class Meta {
  Meta();

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
  );

  Map<String, dynamic> toJson() => {
  };
}
