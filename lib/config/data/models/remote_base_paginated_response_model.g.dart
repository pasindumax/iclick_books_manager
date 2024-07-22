// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_base_paginated_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoteBasePaginatedResponseModel _$RemoteBasePaginatedResponseModelFromJson(
        Map<String, dynamic> json) =>
    RemoteBasePaginatedResponseModel(
      pageNo: (json['pageNo'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      noOfPages: (json['noOfPages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RemoteBasePaginatedResponseModelToJson(
        RemoteBasePaginatedResponseModel instance) =>
    <String, dynamic>{
      'pageNo': instance.pageNo,
      'pageSize': instance.pageSize,
      'noOfPages': instance.noOfPages,
    };
