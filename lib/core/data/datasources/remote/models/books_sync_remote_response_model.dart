import 'package:iclick_books_manager/config/data/models/remote_base_response_model.dart';
import 'package:iclick_books_manager/core/models/book.dart';
import 'package:json_annotation/json_annotation.dart';

part 'books_sync_remote_response_model.g.dart';

@JsonSerializable()
class BooksSyncRemoteResponseModel extends RemoteBaseResponseModel {
  final List<Book>? result;

  BooksSyncRemoteResponseModel({
    this.result,
  });
  factory BooksSyncRemoteResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BooksSyncRemoteResponseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BooksSyncRemoteResponseModelToJson(this);
}
