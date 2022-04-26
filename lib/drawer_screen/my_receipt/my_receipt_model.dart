// To parse this JSON data, do
//
//     final getReceiptModel = getReceiptModelFromJson(jsonString);

import 'dart:convert';

List<GetReceiptModel> getReceiptModelFromJson(String str) => List<GetReceiptModel>.from(json.decode(str).map((x) => GetReceiptModel.fromJson(x)));

String getReceiptModelToJson(List<GetReceiptModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetReceiptModel {
  GetReceiptModel({
    required this.id,
    required this.receipt,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  String id;
  String receipt;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory GetReceiptModel.fromJson(Map<String, dynamic> json) => GetReceiptModel(
    id: json["_id"],
    receipt: json["receipt"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "receipt": receipt,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}
