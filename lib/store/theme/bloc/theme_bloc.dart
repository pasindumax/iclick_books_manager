import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:iclick_books_manager/injection_container.dart';
import 'package:iclick_books_manager/theme/theme_type.dart';
import 'package:iclick_books_manager/theme/theme_values/app_theme/theme_config.dart'
    as default_theme_config;
import 'package:iclick_books_manager/theme/theme_values/app_theme_dark/theme_config.dart'
    as dark_theme_config;
import 'package:iclick_books_manager/theme/theme_values/base_theme_config.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<SetThemeEvent>((event, emit) {
      switch (event.themeType) {
        case ThemeType.defaultTheme:
          emit(ThemeLoaded(di<default_theme_config.ThemeConfig>()));
          break;
        case ThemeType.darkTheme:
          emit(ThemeLoaded(di<dark_theme_config.ThemeConfig>()));
          break;
      }
    });
  }
}
