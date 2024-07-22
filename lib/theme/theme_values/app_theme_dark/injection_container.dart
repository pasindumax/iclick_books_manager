import 'package:get_it/get_it.dart';
import 'package:iclick_books_manager/theme/theme_values/app_theme/colors.dart';

import 'components_theme_data.dart';
import 'dimensions.dart';
import 'fonts.dart';
import 'text_themes.dart';
import 'theme_config.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton(() => Colors());
  di.registerLazySingleton(() => Fonts());
  di.registerLazySingleton(() => TextThemes());
  di.registerLazySingleton(() => Dimensions());
  di.registerLazySingleton(() => ThemeConfig());
  di.registerLazySingleton(() => ComponentsThemeData(
      colors: di(), fonts: di(), textThemes: di(), dimensions: di()));
}
