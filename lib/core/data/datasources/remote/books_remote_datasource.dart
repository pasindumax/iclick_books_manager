import 'package:iclick_books_manager/core/models/book.dart';
import 'package:iclick_books_manager/core/models/book_details.dart';

abstract class BooksRemoteDatasource {
  Future<List<Book>> searchBooks(String query, {int page = 1});
  Future<BookDetails> getBookDetails(String isbn13);
}
