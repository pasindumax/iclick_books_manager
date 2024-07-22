part of 'book_search_bloc.dart';

abstract class BookSearchEvent extends Equatable {
  const BookSearchEvent();

  @override
  List<Object> get props => [];
}

class FetchBooks extends BookSearchEvent {
  final String query;
  final int page;

  const FetchBooks(this.query, {this.page = 1});

  @override
  List<Object> get props => [query, page];
}
