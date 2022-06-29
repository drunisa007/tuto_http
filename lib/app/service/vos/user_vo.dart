// To parse this JSON data, do
//
//     final userVo = userVoFromJson(jsonString);

import 'dart:convert';

List<UserVo> userVoFromJson(String str) => List<UserVo>.from(json.decode(str).map((x) => UserVo.fromJson(x)));

String userVoToJson(List<UserVo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserVo {
    UserVo({
        required this.id,
        required this.title,
        required this.firstName,
        required this.lastName,
        required this.picture,
    });

    String id;
    String title;
    String firstName;
    String lastName;
    String picture;

    factory UserVo.fromJson(Map<String, dynamic> json) => UserVo(
        id: json["id"],
        title: json["title"]??"",
        firstName: json["firstName"],
        lastName: json["lastName"],
        picture:  json["picture"]??"",
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "firstName": firstName,
        "lastName": lastName,
        "picture": picture,
    };
}
