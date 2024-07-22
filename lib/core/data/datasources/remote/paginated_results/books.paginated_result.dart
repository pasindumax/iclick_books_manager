import 'package:iclick_books_manager/config/data/models/remote_base_paginated_response_model.dart';
import 'package:iclick_books_manager/core/models/book.dart';
import 'package:json_annotation/json_annotation.dart';

part 'books.paginated_result.g.dart';

@JsonSerializable()
class BooksPaginatedResult extends RemoteBasePaginatedResponseModel {
  final List<Book>? records;

  BooksPaginatedResult({this.records});

  factory BooksPaginatedResult.fromJson(Map<String, dynamic> json) =>
      _$BooksPaginatedResultFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BooksPaginatedResultToJson(this);
}
