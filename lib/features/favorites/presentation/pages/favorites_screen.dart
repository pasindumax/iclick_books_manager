import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iclick_books_manager/core/components/app_bar/base_app_bar.dart';
import 'package:iclick_books_manager/core/models/book.dart';
import 'package:iclick_books_manager/features/favorites/presentation/bloc/favorites_cubit.dart';
import 'package:iclick_books_manager/features/landing/home/presentation/pages/book_details_screen.dart';
import 'package:iclick_books_manager/generated/l10n.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage()
class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: BlocBuilder<FavoritesCubit, List<Book>>(
        builder: (context, favoriteBooks) {
          if (favoriteBooks.isEmpty) {
            return Center(child: Text(S.of(context).noFavoriteBooksYet));
          }

          return ListView.builder(
            itemCount: favoriteBooks.length,
            itemBuilder: (context, index) {
              final book = favoriteBooks[index];
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            BookDetailsScreen(isbn13: book.isbn13),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }

  BaseAppBar buildAppBar(BuildContext context) {
    return BaseAppBar(
      title: S.of(context).favoriteBooks,
    );
  }
}
