// To parse this JSON data, do
//
//     final getUserCommentsModel = getUserCommentsModelFromJson(jsonString);

import 'dart:convert';

GetUserCommentsModel getUserCommentsModelFromJson(String str) => GetUserCommentsModel.fromJson(json.decode(str));

String getUserCommentsModelToJson(GetUserCommentsModel data) => json.encode(data.toJson());

class GetUserCommentsModel {
  GetUserCommentsModel({
    required this.msg,
    required this.viewcomment,
  });

  String msg;
  List<Viewcomment> viewcomment;

  factory GetUserCommentsModel.fromJson(Map<String, dynamic> json) => GetUserCommentsModel(
    msg: json["msg"],
    viewcomment: List<Viewcomment>.from(json["viewcomment"].map((x) => Viewcomment.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
    "viewcomment": List<dynamic>.from(viewcomment.map((x) => x.toJson())),
  };
}

class Viewcomment {
  Viewcomment({
    this.id,
    this.comment,
    this.active,
    this.modifiedOn,
    this.user,
    this.v,
  });

  String? id;
  String? comment;
  bool ?active;
  DateTime? modifiedOn;
  String ?user;
  int? v;

  factory Viewcomment.fromJson(Map<String, dynamic> json) => Viewcomment(
    id: json["_id"],
    comment: json["comment"],
    active: json["active"],
    modifiedOn: DateTime.parse(json["modifiedOn"]),
    user: json["user"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "comment": comment,
    "active": active,
    "modifiedOn": modifiedOn!.toIso8601String(),
    "user": user,
    "__v": v,
  };
}
