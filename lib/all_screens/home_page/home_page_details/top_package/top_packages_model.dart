// To parse this JSON data, do
//
//     final getTopPackagesModel = getTopPackagesModelFromJson(jsonString);

import 'dart:convert';

List<GetTopPackagesModel> getTopPackagesModelFromJson(String str) => List<GetTopPackagesModel>.from(json.decode(str).map((x) => GetTopPackagesModel.fromJson(x)));

String getTopPackagesModelToJson(List<GetTopPackagesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetTopPackagesModel {
  GetTopPackagesModel({
    this.id,
    this.packageimage,
    this.packagename,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  String ?id;
  String ?packageimage;
  String ?packagename;
  DateTime? createdAt;
  DateTime ?updatedAt;
  int ?v;

  factory GetTopPackagesModel.fromJson(Map<String, dynamic> json) => GetTopPackagesModel(
    id: json["_id"],
    packageimage: json["packageimage"],
    packagename: json["packagename"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "packageimage": packageimage,
    "packagename": packagename,
    "createdAt": createdAt!.toIso8601String(),
    "updatedAt": updatedAt!.toIso8601String(),
    "__v": v,
  };
}
