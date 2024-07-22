part of 'book_search_bloc.dart';

abstract class BookSearchState extends Equatable {
  const BookSearchState();

  @override
  List<Object> get props => [];
}

class BookSearchInitial extends BookSearchState {}

class BookSearchLoading extends BookSearchState {}

class BookSearchLoaded extends BookSearchState {
  final List<Book> books;
  final bool hasReachedMax;

  const BookSearchLoaded({
    this.books = const [],
    this.hasReachedMax = false,
  });

  BookSearchLoaded copyWith({
    List<Book>? books,
    bool? hasReachedMax,
  }) {
    return BookSearchLoaded(
      books: books ?? this.books,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object> get props => [books, hasReachedMax];
}

class BookSearchError extends BookSearchState {
  final String message;

  const BookSearchError(this.message);

  @override
  List<Object> get props => [message];
}
