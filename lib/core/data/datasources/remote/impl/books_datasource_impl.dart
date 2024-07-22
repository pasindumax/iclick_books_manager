import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:iclick_books_manager/config/env_config/env_config.dart';
import 'package:iclick_books_manager/core/data/datasources/remote/books_remote_datasource.dart';
import 'package:iclick_books_manager/core/models/book_details.dart';

import '../../../../models/book.dart';

class BooksRemoteDatasourceImpl extends BooksRemoteDatasource {
  late final String classIdentifier = 'BooksRemoteDatasourceImpl';

  late final EnvConfig envConfig;

  BooksRemoteDatasourceImpl({
    required this.envConfig,
  });
  @override
  Future<List<Book>> searchBooks(String query, {int page = 1}) async {
    final response =
        await http.get(Uri.parse('${envConfig.baseUrl}search/$query/$page'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<dynamic> booksJson = data['books'];
      return booksJson.map((json) => Book.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load books');
    }
  }

  @override
  Future<BookDetails> getBookDetails(String value) async {
    final response =
        await http.get(Uri.parse('${envConfig.baseUrl}books/$value'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return BookDetails.fromJson(data);
    } else {
      throw Exception('Failed to load book details');
    }
  }
}
