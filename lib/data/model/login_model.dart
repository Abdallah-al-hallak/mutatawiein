// To parse this JSON data, do
//
//     final logInModel = logInModelFromJson(jsonString);

import 'dart:convert';

LogInModel logInModelFromJson(String str) =>
    LogInModel.fromJson(json.decode(str));

String logInModelToJson(LogInModel data) => json.encode(data.toJson());

class LogInModel {
  LogInModel({
    required this.jwtResponse,
    required this.username,
    required this.role,
    required this.id,
  });

  final JwtResponse jwtResponse;
  final String username;
  final String role;
  final int id;

  factory LogInModel.fromJson(Map<String, dynamic> json) => LogInModel(
        jwtResponse: JwtResponse.fromJson(json["jwtResponse"]),
        username: json["username"],
        role: json["role"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "jwtResponse": jwtResponse.toJson(),
        "username": username,
        "role": role,
        "id": id,
      };
}

class JwtResponse {
  JwtResponse({
    required this.token,
  });

  final String token;

  factory JwtResponse.fromJson(Map<String, dynamic> json) => JwtResponse(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
