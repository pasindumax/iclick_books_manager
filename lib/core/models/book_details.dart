import 'package:json_annotation/json_annotation.dart';

part 'book_details.g.dart';

@JsonSerializable()
class BookDetails {
  final String title;
  final String subtitle;
  final String isbn10;
  final String isbn13;
  final String pages;
  final String year;
  final String rating;
  final String desc;
  final String price;
  final String image;
  final String url;
  final String authors;
  final String publisher;
  final String language;

  BookDetails({
    required this.title,
    required this.subtitle,
    required this.isbn10,
    required this.isbn13,
    required this.pages,
    required this.year,
    required this.rating,
    required this.desc,
    required this.price,
    required this.image,
    required this.url,
    required this.authors,
    required this.publisher,
    required this.language,
  });

  factory BookDetails.fromJson(Map<String, dynamic> json) =>
      _$BookDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$BookDetailsToJson(this);
}
