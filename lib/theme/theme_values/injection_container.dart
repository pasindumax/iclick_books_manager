import 'package:get_it/get_it.dart';
import 'package:iclick_books_manager/theme/theme_values/app_theme/injection_container.dart'
    as app_theme_di;

import 'base_images.dart';

Future<void>? setup(GetIt di) {
  app_theme_di.setup(di);

  di.registerLazySingleton(() => BaseImages());
  return null;
}
