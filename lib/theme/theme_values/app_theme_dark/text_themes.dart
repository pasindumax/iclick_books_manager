import 'package:flutter/material.dart';
import 'package:iclick_books_manager/injection_container.dart';
import 'package:iclick_books_manager/theme/theme_values/app_theme/colors.dart'
    as app_color_theme;
import 'package:iclick_books_manager/theme/theme_values/app_theme/fonts.dart';
import 'package:iclick_books_manager/theme/theme_values/base_colors.dart';
import 'package:iclick_books_manager/theme/theme_values/base_fonts.dart';
import 'package:iclick_books_manager/theme/theme_values/base_text_themes.dart';
import 'package:iclick_books_manager/theme/theme_values/color_codes.dart';

class TextThemes extends BaseTextThemes {
  BaseFonts fonts = di<Fonts>();
  BaseColors colors = app_color_theme.Colors();

  @override
  TextTheme? get accentTextTheme {
    return TextTheme();
  }

  @override
  TextTheme? get primaryTextTheme {
    return typography?.black.copyWith(
      displayLarge: typography?.black.displayLarge?.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: ColorCodes.black,
      ),
      displayMedium: typography?.black.displayMedium?.copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 19,
      ),
      displaySmall: typography?.black.displaySmall?.copyWith(
        fontFamily: fonts.primaryFontFamily,
        fontSize: 18,
        color: ColorCodes.bottomSheetTextColor,
        fontWeight: FontWeight.w600,
      ),
      headlineLarge: typography?.black.headlineLarge?.copyWith(
        fontFamily: fonts.primaryFontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: ColorCodes.lightGray,
      ),
      headlineMedium: typography?.black.headlineMedium?.copyWith(
        fontFamily: fonts.primaryFontFamily,
        color: ColorCodes.bottomSheetTextColor,
      ),
      headlineSmall: typography?.black.headlineSmall?.copyWith(
        fontFamily: fonts.primaryFontFamily,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: typography?.black.titleMedium?.copyWith(
        fontFamily: fonts.primaryFontFamily,
        fontWeight: FontWeight.w600,
        color: colors.bottomSheetItemTextColor,
      ),
      labelLarge: typography?.black.labelLarge?.copyWith(
        fontSize: 18,
        fontFamily: fonts.primaryFontFamily,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  @override
  TextTheme? get textTheme {
    return TextTheme();
  }

  @override
  Typography? get typography => Typography.material2018();
}
