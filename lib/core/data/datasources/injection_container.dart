import 'package:get_it/get_it.dart';
import 'package:iclick_books_manager/core/data/datasources/remote/injection_container.dart'
    as remote_di;

Future<void>? setup(GetIt di) {
  remote_di.setup(di);

  return null;
}
