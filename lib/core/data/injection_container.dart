import 'package:get_it/get_it.dart';
import 'package:iclick_books_manager/core/data/datasources/injection_container.dart'
    as datasource_di;

Future<void>? setup(GetIt di) {
  datasource_di.setup(di);
  return null;
}
