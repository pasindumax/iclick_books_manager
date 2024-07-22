import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iclick_books_manager/core/models/book.dart';
import 'package:iclick_books_manager/features/favorites/presentation/bloc/favorites_cubit.dart';
import 'package:iclick_books_manager/features/favorites/presentation/pages/favorites_screen.dart';
import 'package:iclick_books_manager/features/landing/home/presentation/bloc/book_search/book_search_bloc.dart';
import 'package:iclick_books_manager/features/landing/home/presentation/pages/book_details_screen.dart';
import 'package:iclick_books_manager/generated/l10n.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  final _scrollController = ScrollController();
  final _searchController = TextEditingController();
  String _query = '';

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _searchBooks();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.atEdge &&
        _scrollController.position.pixels != 0) {
      context.read<BookSearchBloc>().add(FetchBooks(_query));
    }
  }

  void _searchBooks() {
    context.read<BookSearchBloc>().add(FetchBooks(_query));
  }

  void _onSearchSubmitted(String query) {
    setState(() {
      _query = query;
    });
    _searchBooks();
  }

  void _onFavoriteIconPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FavoritesScreen(),
      ),
    );
  }

  void _onBookTapped(String isbn13) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookDetailsScreen(isbn13: isbn13),
      ),
    );
  }

  void _onFavoriteButtonPressed(bool isFavorite, Book book) {
    if (isFavorite) {
      context.read<FavoritesCubit>().removeBook(book);
    } else {
      context.read<FavoritesCubit>().addBook(book);
    }
  }

  Widget _buildBookList(BookSearchState state) {
    if (state is BookSearchLoading) {
      return Center(child: CircularProgressIndicator());
    } else if (state is BookSearchLoaded) {
      return ListView.builder(
        controller: _scrollController,
        itemCount: state.books.length + 1,
        itemBuilder: (context, index) {
          if (index >= state.books.length) {
            return Center(child: CircularProgressIndicator());
          }
          final book = state.books[index];

          return BlocBuilder<FavoritesCubit, List<Book>>(
            builder: (context, favorites) {
              final isFavorite = favorites.any((b) => b.isbn13 == book.isbn13);
              return Padding(
                padding: EdgeInsets.all(2.w),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    side: BorderSide(
                        color: Colors.blue.withAlpha(50), width: 1.0),
                  ),
                  leading: Image.network(book.image, width: 50, height: 50),
                  title: Text(book.title),
                  subtitle: Text(book.subtitle),
                  trailing: IconButton(
                    icon: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_border),
                    onPressed: () => _onFavoriteButtonPressed(isFavorite, book),
                  ),
                  onTap: () => _onBookTapped(book.isbn13),
                ),
              );
            },
          );
        },
      );
    } else if (state is BookSearchError) {
      return Center(child: Text(S.of(context).failedToFetchBooks));
    } else {
      return Center(child: Text(S.of(context).pleaseEnterASearchQuery));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BookSearchBloc, BookSearchState>(
        builder: (context, state) => _buildBookList(state),
      ),
    );
  }
}
