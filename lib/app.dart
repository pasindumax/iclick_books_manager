import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iclick_books_manager/core/data/datasources/remote/books_remote_datasource.dart';
import 'package:iclick_books_manager/features/favorites/presentation/bloc/favorites_cubit.dart';
import 'package:iclick_books_manager/features/landing/home/presentation/bloc/book_search/book_search_bloc.dart';
import 'package:iclick_books_manager/features/onboarding/splash/presentation/bloc/splash_bloc.dart';
import 'package:iclick_books_manager/generated/l10n.dart';
import 'package:iclick_books_manager/injection_container.dart';
import 'package:iclick_books_manager/store/theme/bloc/theme_bloc.dart';
import 'package:iclick_books_manager/theme/theme_values/app_theme/theme_config.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'routes/router.dart';
import 'theme/theme_type.dart';

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRouter _appRouter = di();

  final ThemeConfig ts = di();

  late final StreamSubscription<List<ConnectivityResult>> connectionListner;

  @override
  void initState() {
    connectionListner = Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) {});

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    connectionListner.cancel();
  }

  @override
  Widget build(BuildContext context) {
    BooksRemoteDatasource? bookRepository = di();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookSearchBloc(bookRepository: bookRepository),
        ),
        BlocProvider(
          create: (context) => FavoritesCubit(),
        ),
        BlocProvider(create: (context) => SplashBloc()..add(LoadSplash())),
        BlocProvider(
            create: (context) =>
                ThemeBloc()..add(const SetThemeEvent(ThemeType.defaultTheme))),
      ],
      child: _buildWithTheme(context, ts),
    );
  }

  Widget _buildWithTheme(BuildContext context, ThemeConfig ts) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return MaterialApp.router(
        title: 'Iclick Books Manager',
        theme: ts.theme..colorScheme.copyWith(secondary: ts.col.accentColor),
        darkTheme: ts.darkTheme
          ..colorScheme.copyWith(secondary: ts.col.accentColor),
        localizationsDelegates: const [
          S.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        localeResolutionCallback:
            (Locale? locale, Iterable<Locale> supportedLocales) {
          return locale;
        },
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      );
    });
  }
}
