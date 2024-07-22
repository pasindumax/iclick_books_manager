import 'package:get_it/get_it.dart';
import 'package:iclick_books_manager/config/constants/injection_container.dart'
    as constant_di;
import 'package:iclick_books_manager/config/data/injection_container.dart'
    as data_di;
import 'package:iclick_books_manager/config/env_config/injection_container.dart'
    as env_config_di;

Future<void>? setup(GetIt di) {
  env_config_di.setup(di);
  data_di.setup(di);
  constant_di.setup(di);
  return null;
}
