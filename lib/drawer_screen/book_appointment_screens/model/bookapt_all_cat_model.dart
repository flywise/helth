// To parse this JSON data, do
//
//     final getAllcategory = getAllcategoryFromJson(jsonString);

import 'dart:convert';

GetAllcategory getAllcategoryFromJson(String str) => GetAllcategory.fromJson(json.decode(str));

String getAllcategoryToJson(GetAllcategory data) => json.encode(data.toJson());

class GetAllcategory {
  GetAllcategory({
    required this.msg,
    required this.getallcategory,
  });

  String msg;
  List<Getallcategory> getallcategory;

  factory GetAllcategory.fromJson(Map<String, dynamic> json) => GetAllcategory(
    msg: json["msg"],
    getallcategory: List<Getallcategory>.from(json["getallcategory"].map((x) => Getallcategory.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
    "getallcategory": List<dynamic>.from(getallcategory.map((x) => x.toJson())),
  };
}

class Getallcategory {
  Getallcategory({
    this.id,
    this.categoryname,
    this.doctorname,
    this.testname,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  String ?id;
  String ?categoryname;
  String ?doctorname;
  String ?testname;
  DateTime? createdAt;
  DateTime ?updatedAt;
  int ?v;

  factory Getallcategory.fromJson(Map<String, dynamic> json) => Getallcategory(
    id: json["_id"],
    categoryname: json["categoryname"],
    doctorname: json["doctorname"],
    testname: json["testname"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "categoryname": categoryname,
    "doctorname": doctorname,
    "testname": testname,
    "createdAt": createdAt!.toIso8601String(),
    "updatedAt": updatedAt!.toIso8601String(),
    "__v": v,
  };
}
