import 'package:get_it/get_it.dart';
import 'package:iclick_books_manager/config/env_config/env_config.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton(() => EnvConfig(endPoints: di()));
}
