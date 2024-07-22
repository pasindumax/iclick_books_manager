import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:iclick_books_manager/core/data/datasources/remote/books_remote_datasource.dart';
import 'package:iclick_books_manager/core/models/book.dart';

part 'book_searc_event.dart';
part 'book_searc_state.dart';

class BookSearchBloc extends Bloc<BookSearchEvent, BookSearchState> {
  final BooksRemoteDatasource bookRepository;
  int currentPage = 1;
  bool isFetching = false;

  BookSearchBloc({required this.bookRepository}) : super(BookSearchInitial());

  @override
  Stream<BookSearchState> mapEventToState(BookSearchEvent event) async* {
    if (event is FetchBooks) {
      yield* _mapFetchBooksToState(event);
    }
  }

  Stream<BookSearchState> _mapFetchBooksToState(FetchBooks event) async* {
    if (isFetching) return;
    isFetching = true;

    try {
      if (state is BookSearchInitial || event.page == 1) {
        currentPage = 1;
        final books =
            await bookRepository.searchBooks(event.query, page: currentPage);
        yield BookSearchLoaded(books: books, hasReachedMax: books.isEmpty);
      } else if (state is BookSearchLoaded) {
        currentPage++;
        final currentBooks = (state as BookSearchLoaded).books;
        final newBooks =
            await bookRepository.searchBooks(event.query, page: currentPage);
        yield newBooks.isEmpty
            ? (state as BookSearchLoaded).copyWith(hasReachedMax: true)
            : BookSearchLoaded(
                books: currentBooks + newBooks,
                hasReachedMax: false,
              );
      }
    } catch (_) {
      yield BookSearchError('Failed to load books');
    } finally {
      isFetching = false;
    }
  }
}
