import 'package:get_it/get_it.dart';
import 'package:iclick_books_manager/config/constants/endpoints.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton(() => EndPoints());
}
