// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'inner_error_model.freezed.dart';

part 'inner_error_model.g.dart';

InnerErrorModel innerErrorModelFromJson(String str) =>
    InnerErrorModel.fromJson(json.decode(str));

String innerErrorToJson(InnerErrorModel data) => json.encode(data.toJson());

@freezed
class InnerErrorModel with _$InnerErrorModel {
  const factory InnerErrorModel({
    Result? result,
    Error? error,
  }) = _InnerErrorModel;

  factory InnerErrorModel.fromJson(Map<String, dynamic> json) =>
      _$InnerErrorModelFromJson(json);
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
    required String message,
    int? totalRecords,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
