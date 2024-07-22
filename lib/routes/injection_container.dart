import 'package:get_it/get_it.dart';
import 'package:iclick_books_manager/routes/router.dart';

Future<void> setup(GetIt di) async {
  di.registerLazySingleton(() => AppRouter());
}
