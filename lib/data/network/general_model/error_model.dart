// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'error_model.freezed.dart';

part 'error_model.g.dart';

ErrorModel errorModelFromJson(String str) =>
    ErrorModel.fromJson(json.decode(str));

String errorModelToJson(ErrorModel data) => json.encode(data.toJson());

@freezed
class ErrorModel with _$ErrorModel {
  const factory ErrorModel({
    Result? result,
    Error? error,
  }) = _ErrorModel;

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);
}

@freezed
class Error with _$Error {
  const factory Error({
    required int code,
    required String message,
  }) = _Error;

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required int code,
    dynamic data,
    String? message,
    required int totalRecords,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
