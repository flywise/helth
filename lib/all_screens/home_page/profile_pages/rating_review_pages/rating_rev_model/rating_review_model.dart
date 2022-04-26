// To parse this JSON data, do
//
//     final ratingReviewModel = ratingReviewModelFromJson(jsonString);

import 'dart:convert';

RatingReviewModel ratingReviewModelFromJson(String str) => RatingReviewModel.fromJson(json.decode(str));

String ratingReviewModelToJson(RatingReviewModel data) => json.encode(data.toJson());

class RatingReviewModel {
  RatingReviewModel({
    required this.msg,
    required this.viewrating,
  });

  String msg;
  List<Viewrating> viewrating;

  factory RatingReviewModel.fromJson(Map<String, dynamic> json) => RatingReviewModel(
    msg: json["msg"],
    viewrating: List<Viewrating>.from(json["viewrating"].map((x) => Viewrating.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "msg": msg,
    "viewrating": List<dynamic>.from(viewrating.map((x) => x.toJson())),
  };
}

class Viewrating {
  Viewrating({
     this.id,
     this.review,
     this.rating,
     this.active,
     this.modifiedOn,
     this.user,
     this.v,
     this.package,
  });

  String ?id;
  String? review;
  int ?rating;
  bool ?active;
  DateTime? modifiedOn;
  String? user;
  int ?v;
  String ?package;

  factory Viewrating.fromJson(Map<String, dynamic> json) => Viewrating(
    id: json["_id"],
    review: json["review"],
    rating: json["rating"],
    active: json["active"],
    modifiedOn: DateTime.parse(json["modifiedOn"]),
    user: json["user"],
    v: json["__v"],
    package: json["package"] == null ? null : json["package"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "review": review,
    "rating": rating,
    "active": active,
    "modifiedOn": modifiedOn!.toIso8601String(),
    "user": user,
    "__v": v,
    "package": package == null ? null : package,
  };
}
