// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Retry`
  String get commonRetry {
    return Intl.message(
      'Retry',
      name: 'commonRetry',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get commonYes {
    return Intl.message(
      'Yes',
      name: 'commonYes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get commonNo {
    return Intl.message(
      'No',
      name: 'commonNo',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get commonCancel {
    return Intl.message(
      'Cancel',
      name: 'commonCancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get commonSave {
    return Intl.message(
      'Save',
      name: 'commonSave',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get commonSubmit {
    return Intl.message(
      'Submit',
      name: 'commonSubmit',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get commonNext {
    return Intl.message(
      'Next',
      name: 'commonNext',
      desc: '',
      args: [],
    );
  }

  /// `from`
  String get commonFrom {
    return Intl.message(
      'from',
      name: 'commonFrom',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get commonDone {
    return Intl.message(
      'Done',
      name: 'commonDone',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get commonClose {
    return Intl.message(
      'Close',
      name: 'commonClose',
      desc: '',
      args: [],
    );
  }

  /// `Search for a Book`
  String get homescreenSearchForABook {
    return Intl.message(
      'Search for a Book',
      name: 'homescreenSearchForABook',
      desc: '',
      args: [],
    );
  }

  /// `No favorite books yet`
  String get noFavoriteBooksYet {
    return Intl.message(
      'No favorite books yet',
      name: 'noFavoriteBooksYet',
      desc: '',
      args: [],
    );
  }

  /// `Favorite Books`
  String get favoriteBooks {
    return Intl.message(
      'Favorite Books',
      name: 'favoriteBooks',
      desc: '',
      args: [],
    );
  }

  /// `Book Search`
  String get bookSearch {
    return Intl.message(
      'Book Search',
      name: 'bookSearch',
      desc: '',
      args: [],
    );
  }

  /// `Failed to fetch books`
  String get failedToFetchBooks {
    return Intl.message(
      'Failed to fetch books',
      name: 'failedToFetchBooks',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a search query`
  String get pleaseEnterASearchQuery {
    return Intl.message(
      'Please enter a search query',
      name: 'pleaseEnterASearchQuery',
      desc: '',
      args: [],
    );
  }

  /// `Book not found`
  String get bookNotFound {
    return Intl.message(
      'Book not found',
      name: 'bookNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Book Details`
  String get bookDetails {
    return Intl.message(
      'Book Details',
      name: 'bookDetails',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
