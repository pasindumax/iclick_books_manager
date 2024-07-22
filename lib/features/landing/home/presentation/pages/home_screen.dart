import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iclick_books_manager/core/components/app_bar/base_app_bar.dart';
import 'package:iclick_books_manager/core/components/text_fields/default_search_field.dart';
import 'package:iclick_books_manager/features/favorites/presentation/pages/favorites_screen.dart';
import 'package:iclick_books_manager/features/landing/home/presentation/bloc/book_search/book_search_bloc.dart';
import 'package:iclick_books_manager/features/landing/home/presentation/pages/book_list_screen.dart';
import 'package:iclick_books_manager/generated/l10n.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _setupScrollController();
  }

  void _setupScrollController() {
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isBottom()) {
      final currentState = BlocProvider.of<BookSearchBloc>(context).state;
      if (currentState is BookSearchLoaded && !currentState.hasReachedMax) {
        _fetchMoreBooks(currentState);
      }
    }
  }

  void _fetchMoreBooks(BookSearchLoaded state) {
    BlocProvider.of<BookSearchBloc>(context).add(
      FetchBooks(_searchController.text, page: state.books.length ~/ 10 + 1),
    );
  }

  bool _isBottom() {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    return currentScroll >= maxScroll * 0.9;
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            _buildSearchField(),
            Expanded(child: _buildBookList()),
          ],
        ),
      ),
    );
  }

  BaseAppBar buildAppBar() {
    return BaseAppBar(title: S.of(context).bookSearch, actionWidgets: [
      IconButton(
        icon: Icon(Icons.favorite),
        onPressed: _onFavoriteIconPressed,
      ),
    ]);
  }

  void _onFavoriteIconPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FavoritesScreen(),
      ),
    );
  }

  Widget _buildSearchField() {
    return DefaultSearchField(
      controller: _searchController,
      isVisibleSearchButton: true,
      labelText: S.of(context).homescreenSearchForABook,
      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      setValue: (String? value) => {},
      onTapSearchButton: () => {
        BlocProvider.of<BookSearchBloc>(context)
            .add(FetchBooks(_searchController.text, page: 1))
      },
      textInputAction: TextInputAction.search,
      onFieldSubmitted: (value) => {
        BlocProvider.of<BookSearchBloc>(context)
            .add(FetchBooks(_searchController.text, page: 1))
      },
    );
  }

  Widget _buildBookList() {
    return BlocBuilder<BookSearchBloc, BookSearchState>(
      builder: (context, state) {
        if (state is BookSearchLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is BookSearchLoaded) {
          return BookListScreen();
        } else if (state is BookSearchError) {
          return Center(child: Text(S.of(context).failedToFetchBooks));
        } else {
          return Center(child: Text(S.of(context).pleaseEnterASearchQuery));
        }
      },
    );
  }
}
