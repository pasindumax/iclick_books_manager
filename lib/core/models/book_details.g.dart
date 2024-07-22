// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDetails _$BookDetailsFromJson(Map<String, dynamic> json) => BookDetails(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      isbn10: json['isbn10'] as String,
      isbn13: json['isbn13'] as String,
      pages: json['pages'] as String,
      year: json['year'] as String,
      rating: json['rating'] as String,
      desc: json['desc'] as String,
      price: json['price'] as String,
      image: json['image'] as String,
      url: json['url'] as String,
      authors: json['authors'] as String,
      publisher: json['publisher'] as String,
      language: json['language'] as String,
    );

Map<String, dynamic> _$BookDetailsToJson(BookDetails instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'isbn10': instance.isbn10,
      'isbn13': instance.isbn13,
      'pages': instance.pages,
      'year': instance.year,
      'rating': instance.rating,
      'desc': instance.desc,
      'price': instance.price,
      'image': instance.image,
      'url': instance.url,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'language': instance.language,
    };
