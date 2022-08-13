// SECTION Manual Create Models
//class UserModel {
//   late String avatar;
//   late String name;
//   late String email;
//   //Create Constractor
//   UserModel({
//     required this.avatar,
//     required this.name,
//     required this.email,
//   });
// }

// SECTION Create Models using quicktype.io
// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  //Constructor
  UserModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });
  //field
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
