// To parse this JSON data, do
//
//     final homepageDetailsModel = homepageDetailsModelFromJson(jsonString);

import 'dart:convert';

List<HomepageDetailsModel> homepageDetailsModelFromJson(String str) => List<HomepageDetailsModel>.from(json.decode(str).map((x) => HomepageDetailsModel.fromJson(x)));

String homepageDetailsModelToJson(List<HomepageDetailsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomepageDetailsModel {
  HomepageDetailsModel({
    this.id,
    this.bannerAdd,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  String ?id;
  String ?bannerAdd;
  DateTime? createdAt;
  DateTime? updatedAt;
  int ?v;

  factory HomepageDetailsModel.fromJson(Map<String, dynamic> json) => HomepageDetailsModel(
    id: json["_id"],
    bannerAdd: json["bannerAdd"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "bannerAdd": bannerAdd,
    "createdAt": createdAt!.toIso8601String(),
    "updatedAt": updatedAt!.toIso8601String(),
    "__v": v,
  };
}
