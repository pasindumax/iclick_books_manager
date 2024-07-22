import 'package:flutter/material.dart';

import 'base_colors.dart';
import 'base_components_theme_data.dart';
import 'base_dimensions.dart';
import 'base_fonts.dart';
import 'base_text_themes.dart';

abstract class BaseThemeConfig {
  abstract BaseColors col;
  abstract BaseFonts fon;
  abstract BaseTextThemes textThemes;
  abstract BaseDimensions dim;
  abstract BaseComponentsThemeData componentsThemeData;

  ThemeData get theme;
  ThemeData get darkTheme;
}
