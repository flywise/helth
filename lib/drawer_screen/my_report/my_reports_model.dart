// To parse this JSON data, do
//
//     final getReports = getReportsFromJson(jsonString);

import 'dart:convert';

List<GetReports> getReportsFromJson(String str) => List<GetReports>.from(json.decode(str).map((x) => GetReports.fromJson(x)));

String getReportsToJson(List<GetReports> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetReports {
  GetReports({
    required this.id,
    required this.report,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  String id;
  String report;
  DateTime createdAt;
  DateTime updatedAt;
  int v;

  factory GetReports.fromJson(Map<String, dynamic> json) => GetReports(
    id: json["_id"],
    report: json["report"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "report": report,
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": v,
  };
}
