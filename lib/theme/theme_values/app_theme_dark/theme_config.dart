import 'package:flutter/src/material/theme_data.dart';
import 'package:iclick_books_manager/injection_container.dart';
import 'package:iclick_books_manager/theme/theme_values/app_theme/colors.dart';
import 'package:iclick_books_manager/theme/theme_values/app_theme/dimensions.dart';
import 'package:iclick_books_manager/theme/theme_values/app_theme/fonts.dart';
import 'package:iclick_books_manager/theme/theme_values/app_theme/text_themes.dart';
import 'package:iclick_books_manager/theme/theme_values/base_colors.dart';
import 'package:iclick_books_manager/theme/theme_values/base_components_theme_data.dart';
import 'package:iclick_books_manager/theme/theme_values/base_dimensions.dart';
import 'package:iclick_books_manager/theme/theme_values/base_fonts.dart';
import 'package:iclick_books_manager/theme/theme_values/base_text_themes.dart';
import 'package:iclick_books_manager/theme/theme_values/base_theme_config.dart';

import 'components_theme_data.dart';

class ThemeConfig extends BaseThemeConfig {
  @override
  BaseColors col = di<Colors>();

  @override
  BaseFonts fon = di<Fonts>();

  @override
  BaseTextThemes textThemes = di<TextThemes>();

  @override
  BaseComponentsThemeData componentsThemeData = di<ComponentsThemeData>();

  @override
  BaseDimensions dim = di<Dimensions>();

  @override
  ThemeData get theme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: col.primaryColor,
      primarySwatch: col.primarySwatch,
      //   accentColor: col.accentColor,
      appBarTheme: componentsThemeData.appBarTheme,
      fontFamily: fon.primaryFontFamily,
      textTheme: textThemes.textTheme,
      primaryTextTheme: textThemes.primaryTextTheme,
      //  accentTextTheme: textThemes.accentTextTheme,
      typography: textThemes.typography,
    );
  }

  @override
  ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: col.primaryColor,
      primarySwatch: col.primarySwatch,
      //   accentColor: col.accentColor,
      appBarTheme: componentsThemeData.appBarTheme,
      fontFamily: fon.primaryFontFamily,
      textTheme: textThemes.textTheme,
      primaryTextTheme: textThemes.primaryTextTheme,
      //  accentTextTheme: textThemes.accentTextTheme,
      typography: textThemes.typography,
    );
  }
}
