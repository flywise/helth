// To parse this JSON data, do
//
//     final getDiseaseModel = getDiseaseModelFromJson(jsonString);

import 'dart:convert';

List<GetDiseaseModel> getDiseaseModelFromJson(String str) => List<GetDiseaseModel>.from(json.decode(str).map((x) => GetDiseaseModel.fromJson(x)));

String getDiseaseModelToJson(List<GetDiseaseModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetDiseaseModel {
  GetDiseaseModel({
    this.id,
    this.diseaseimage,
    this.diseasename,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  String ?id;
  String ? diseaseimage;
  String? diseasename;
  DateTime ? createdAt;
  DateTime? updatedAt;
  int? v;

  factory GetDiseaseModel.fromJson(Map<String, dynamic> json) => GetDiseaseModel(
    id: json["_id"],
    diseaseimage: json["diseaseimage"],
    diseasename: json["diseasename"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "diseaseimage": diseaseimage,
    "diseasename": diseasename,
    "createdAt": createdAt!.toIso8601String(),
    "updatedAt": updatedAt!.toIso8601String(),
    "__v": v,
  };
}
