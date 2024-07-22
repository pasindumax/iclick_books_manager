// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:iclick_books_manager/features/favorites/presentation/pages/favorites_screen.dart'
    as _i2;
import 'package:iclick_books_manager/features/landing/home/presentation/pages/book_details_screen.dart'
    as _i1;
import 'package:iclick_books_manager/features/landing/home/presentation/pages/home_screen.dart'
    as _i3;
import 'package:iclick_books_manager/features/onboarding/splash/presentation/pages/splash_page.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    BookDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<BookDetailsRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.BookDetailsScreen(isbn13: args.isbn13),
      );
    },
    FavoritesRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.FavoritesScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.HomeScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BookDetailsScreen]
class BookDetailsRoute extends _i5.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute({
    required String isbn13,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          BookDetailsRoute.name,
          args: BookDetailsRouteArgs(isbn13: isbn13),
          initialChildren: children,
        );

  static const String name = 'BookDetailsRoute';

  static const _i5.PageInfo<BookDetailsRouteArgs> page =
      _i5.PageInfo<BookDetailsRouteArgs>(name);
}

class BookDetailsRouteArgs {
  const BookDetailsRouteArgs({required this.isbn13});

  final String isbn13;

  @override
  String toString() {
    return 'BookDetailsRouteArgs{isbn13: $isbn13}';
  }
}

/// generated route for
/// [_i2.FavoritesScreen]
class FavoritesRoute extends _i5.PageRouteInfo<void> {
  const FavoritesRoute({List<_i5.PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
