// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books.paginated_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BooksPaginatedResult _$BooksPaginatedResultFromJson(
        Map<String, dynamic> json) =>
    BooksPaginatedResult(
      records: (json['records'] as List<dynamic>?)
          ?.map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..pageNo = (json['pageNo'] as num?)?.toInt()
      ..pageSize = (json['pageSize'] as num?)?.toInt()
      ..noOfPages = (json['noOfPages'] as num?)?.toInt();

Map<String, dynamic> _$BooksPaginatedResultToJson(
        BooksPaginatedResult instance) =>
    <String, dynamic>{
      'pageNo': instance.pageNo,
      'pageSize': instance.pageSize,
      'noOfPages': instance.noOfPages,
      'records': instance.records,
    };
