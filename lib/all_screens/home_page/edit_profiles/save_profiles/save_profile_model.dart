// To parse this JSON data, do
//
//     final getUserModel = getUserModelFromJson(jsonString);

import 'dart:convert';

GetUserModel getUserModelFromJson(String str) => GetUserModel.fromJson(json.decode(str));

String getUserModelToJson(GetUserModel data) => json.encode(data.toJson());

class GetUserModel {
  GetUserModel({
    required this.msg,
    required this.getuser,
  });

  String msg;
  List<Getuser> getuser;

  factory GetUserModel.fromJson(Map<String, dynamic> json) => GetUserModel(
    msg: json["msg"],
    getuser: List<Getuser>.from(json["getuser"].map((x) => Getuser.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
    "getuser": List<dynamic>.from(getuser.map((x) => x.toJson())),
  };
}

class Getuser {
  Getuser({
    this.id,
    this.number,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.age,
    this.email,
    this.gender,
    this.name,
    this.image,
  });

  String ?id;
  String ?number;
  DateTime? createdAt;
  DateTime ?updatedAt;
  int ?v;
  int ?age;
  String? email;
  String ?gender;
  String ?name;
  String ?image;

  factory Getuser.fromJson(Map<String, dynamic> json) => Getuser(
    id: json["_id"],
    number: json["number"],
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    v: json["__v"],
    age: json["age"],
    email: json["email"],
    gender: json["gender"],
    name: json["name"],
    image: json["image"] == null ? null : json["image"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "number": number,
    "createdAt": createdAt!.toIso8601String(),
    "updatedAt": updatedAt!.toIso8601String(),
    "__v": v,
    "age": age,
    "email": email,
    "gender": gender,
    "name": name,
    "image": image == null ? null : image,
  };
}
