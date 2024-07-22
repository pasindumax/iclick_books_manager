import 'package:get_it/get_it.dart';
import 'package:iclick_books_manager/core/components/injection_container.dart'
    as components_di;
import 'package:iclick_books_manager/core/data/injection_container.dart'
    as data_di;

Future<void>? setup(GetIt di) {
  components_di.setup(di);

  data_di.setup(di);

  return null;
}
