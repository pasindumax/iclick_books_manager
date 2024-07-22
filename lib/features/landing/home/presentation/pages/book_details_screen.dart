import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:iclick_books_manager/core/components/app_bar/base_app_bar.dart';
import 'package:iclick_books_manager/core/data/datasources/remote/books_remote_datasource.dart';
import 'package:iclick_books_manager/core/models/book_details.dart';
import 'package:iclick_books_manager/features/favorites/presentation/pages/favorites_screen.dart';
import 'package:iclick_books_manager/generated/l10n.dart';
import 'package:iclick_books_manager/injection_container.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@RoutePage()
class BookDetailsScreen extends StatelessWidget {
  final String isbn13;
  BooksRemoteDatasource? bookRepository = di();
  BookDetailsScreen({required this.isbn13});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: FutureBuilder<BookDetails>(
        future: bookRepository?.getBookDetails(isbn13),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text(S.of(context).pleaseEnterASearchQuery));
          } else if (!snapshot.hasData) {
            return Center(child: Text(S.of(context).bookNotFound));
          } else {
            final book = snapshot.data!;
            return Padding(
              padding: EdgeInsets.all(4.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          book.image,
                          fit: BoxFit.cover,
                          // height: 200,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      book.title,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      book.subtitle,
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 16),
                    _buildRatingStars(
                        double.parse(book.rating)), // Add a rating widget
                    SizedBox(height: 16),
                    Text(
                      'Author(s): ${book.authors}', // Corrected to use the `author` field
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Price: ${book.price}', // Added currency symbol
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'ISBN: ${book.isbn13}', // Added ISBN number for context
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }

  BaseAppBar buildAppBar(BuildContext context) {
    return BaseAppBar(title: 'Book Details', actionWidgets: [
      IconButton(
        icon: Icon(Icons.favorite),
        onPressed: () => _onFavoriteIconPressed(context),
      ),
    ]);
  }

  void _onFavoriteIconPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FavoritesScreen(),
      ),
    );
  }

  Widget _buildRatingStars(double rating) {
    return Row(
      children: List.generate(5, (index) {
        return Icon(
          index < rating ? Icons.star : Icons.star_border,
          color: Colors.amber,
          size: 20,
        );
      }),
    );
  }
}
