// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_sync_remote_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BooksSyncRemoteResponseModel _$BooksSyncRemoteResponseModelFromJson(
        Map<String, dynamic> json) =>
    BooksSyncRemoteResponseModel(
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..statusCode = (json['statusCode'] as num?)?.toInt()
      ..messageCode = json['messageCode'] as String?
      ..message = json['message'] as String?
      ..messageDetails = json['messageDetails'] as String?
      ..status = (json['status'] as num?)?.toInt()
      ..responseGeneratedTime = json['responseGeneratedTime'] as String?
      ..isSuccess = json['isSuccess'] as bool?;

Map<String, dynamic> _$BooksSyncRemoteResponseModelToJson(
        BooksSyncRemoteResponseModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'messageCode': instance.messageCode,
      'message': instance.message,
      'messageDetails': instance.messageDetails,
      'status': instance.status,
      'responseGeneratedTime': instance.responseGeneratedTime,
      'isSuccess': instance.isSuccess,
      'result': instance.result,
    };
