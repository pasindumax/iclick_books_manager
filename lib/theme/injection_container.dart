import 'package:get_it/get_it.dart';
import 'package:iclick_books_manager/theme/theme_values/injection_container.dart'
    as theme_values_di;

Future<void>? setup(GetIt di) {
  theme_values_di.setup(di);
  return null;
}
