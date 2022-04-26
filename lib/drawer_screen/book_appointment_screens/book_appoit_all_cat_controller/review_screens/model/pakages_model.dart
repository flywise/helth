// To parse this JSON data, do
//
//     final getPackages = getPackagesFromJson(jsonString);

import 'dart:convert';

GetPackages getPackagesFromJson(String str) => GetPackages.fromJson(json.decode(str));

String getPackagesToJson(GetPackages data) => json.encode(data.toJson());

class GetPackages {
  GetPackages({
    required this.msg,
    required this.getpackage,
  });

  String msg;
  Getpackage getpackage;

  factory GetPackages.fromJson(Map<String, dynamic> json) => GetPackages(
    msg: json["msg"],
    getpackage: Getpackage.fromJson(json["getpackage"]),
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
    "getpackage": getpackage.toJson(),
  };
}

class Getpackage {
  Getpackage({
    this.id,
    this.categoryId,
    this.recommended,
    this.agegroup,
    this.field1,
    this.field2,
    this.field3,
    this.field4,
    this.field5,
    this.field6,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  String ?id;
  CategoryId? categoryId;
  String ?recommended;
  String? agegroup;
  String ?field1;
  String ?field2;
  String ?field3;
  String ?field4;
  String ?field5;
  String ?field6;
  String ?description;
  DateTime? createdAt;
  DateTime ?updatedAt;
  int? v;

  factory Getpackage.fromJson(Map<String, dynamic> json) => Getpackage(
    id: json["_id"],
    categoryId: CategoryId.fromJson(json["categoryId"]),
    recommended: json["recommended"],
    agegroup: json["agegroup"],
    field1: json["field1"],
    field2: json["field2"],
    field3: json["field3"],
    field4: json["field4"],
    field5: json["field5"],
    field6: json["field6"],
    description: json["description"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "categoryId": categoryId!.toJson(),
    "recommended": recommended,
    "agegroup": agegroup,
    "field1": field1,
    "field2": field2,
    "field3": field3,
    "field4": field4,
    "field5": field5,
    "field6": field6,
    "description": description,
    "createdAt": createdAt!.toIso8601String(),
    "updatedAt": updatedAt!.toIso8601String(),
    "__v": v,
  };
}

class CategoryId {
  CategoryId({
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
  DateTime ?createdAt;
  DateTime ?updatedAt;
  int ?v;

  factory CategoryId.fromJson(Map<String, dynamic> json) => CategoryId(
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
