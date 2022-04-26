// To parse this JSON data, do
//
//     final getprescriptionModel = getprescriptionModelFromJson(jsonString);

import 'dart:convert';

List<GetprescriptionModel> getprescriptionModelFromJson(String str) => List<GetprescriptionModel>.from(json.decode(str).map((x) => GetprescriptionModel.fromJson(x)));

String getprescriptionModelToJson(List<GetprescriptionModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetprescriptionModel {
  GetprescriptionModel({
    required this.id,
    required this.priscription,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  String id;
  String priscription;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory GetprescriptionModel.fromJson(Map<String, dynamic> json) => GetprescriptionModel(
    id: json["_id"],
    priscription: json["priscription"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "priscription": priscription,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}
