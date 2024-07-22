import 'package:get_it/get_it.dart';
import 'package:iclick_books_manager/core/data/datasources/remote/books_remote_datasource.dart';
import 'package:iclick_books_manager/core/data/datasources/remote/impl/books_datasource_impl.dart';

Future<void>? setup(GetIt di) async {
  di.registerLazySingleton<BooksRemoteDatasource>(
      () => BooksRemoteDatasourceImpl(
            envConfig: di(),
          ));
}
