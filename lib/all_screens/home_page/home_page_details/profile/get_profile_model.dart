// To parse this JSON data, do
//
//     final getProfileModel = getProfileModelFromJson(jsonString);

import 'dart:convert';

List<GetProfileModel> getProfileModelFromJson(String str) => List<GetProfileModel>.from(json.decode(str).map((x) => GetProfileModel.fromJson(x)));

String getProfileModelToJson(List<GetProfileModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetProfileModel {
  GetProfileModel({
    this.id,
    this.profileimage,
    this.profilename,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  String ?id;
  String ? profileimage;
  String ? profilename;
  DateTime ? createdAt;
  DateTime? updatedAt;
  int ?v;

  factory GetProfileModel.fromJson(Map<String, dynamic> json) => GetProfileModel(
    id: json["_id"],
    profileimage: json["profileimage"],
    profilename: json["profilename"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "profileimage": profileimage,
    "profilename": profilename,
    "createdAt": createdAt!.toIso8601String(),
    "updatedAt": updatedAt!.toIso8601String(),
    "__v": v,
  };
}
