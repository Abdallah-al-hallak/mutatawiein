// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inner_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InnerErrorModel _$$_InnerErrorModelFromJson(Map<String, dynamic> json) =>
    _$_InnerErrorModel(
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : Error.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InnerErrorModelToJson(_$_InnerErrorModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'error': instance.error,
    };

_$_Error _$$_ErrorFromJson(Map<String, dynamic> json) => _$_Error(
      code: json['code'] as int,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_ErrorToJson(_$_Error instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      code: json['code'] as int,
      data: json['data'],
      message: json['message'] as String,
      totalRecords: json['totalRecords'] as int?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
      'message': instance.message,
      'totalRecords': instance.totalRecords,
    };
