// To parse this JSON data, do
//
//     final getSupportBrandModel = getSupportBrandModelFromJson(jsonString);

import 'dart:convert';

List<GetSupportBrandModel> getSupportBrandModelFromJson(String str) => List<GetSupportBrandModel>.from(json.decode(str).map((x) => GetSupportBrandModel.fromJson(x)));

String getSupportBrandModelToJson(List<GetSupportBrandModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetSupportBrandModel {
  GetSupportBrandModel({
    this.id,
    this.brandAdd,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  String ?id;
  String ?brandAdd;
  DateTime? createdAt;
  DateTime ?updatedAt;
  int? v;

  factory GetSupportBrandModel.fromJson(Map<String, dynamic> json) => GetSupportBrandModel(
    id: json["_id"],
    brandAdd: json["brandAdd"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "brandAdd": brandAdd,
    "createdAt": createdAt!.toIso8601String(),
    "updatedAt": updatedAt!.toIso8601String(),
    "__v": v,
  };
}
