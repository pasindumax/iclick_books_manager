import 'package:iclick_books_manager/generated/l10n.dart';
import 'package:get_it/get_it.dart';
import 'package:iclick_books_manager/config/injection_container.dart'
    as config_di;
import 'package:iclick_books_manager/core/injection_container.dart' as core_di;
import 'package:iclick_books_manager/features/injection_container.dart'
    as features_di;
import 'package:iclick_books_manager/helpers/injection_container.dart'
    as helpers_di;
import 'package:iclick_books_manager/routes/injection_container.dart'
    as routes_di;
import 'package:iclick_books_manager/theme/injection_container.dart'
    as theme_di;
import 'package:iclick_books_manager/store/injection_container.dart'
    as store_di;

final di = GetIt.instance;

Future<void>? setup() {
  config_di.setup(di);
  core_di.setup(di);
  features_di.setup(di);
  helpers_di.setup(di);
  routes_di.setup(di);
  theme_di.setup(di);
  store_di.setup(di);

  di.registerLazySingleton(() => S());
  return null;
}
