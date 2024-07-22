import 'package:bloc/bloc.dart';
import 'package:iclick_books_manager/core/models/book.dart';

class FavoritesCubit extends Cubit<List<Book>> {
  FavoritesCubit() : super([]);

  void addBook(Book book) {
    emit([...state, book]);
  }

  void removeBook(Book book) {
    emit(state.where((b) => b.isbn13 != book.isbn13).toList());
  }
}
