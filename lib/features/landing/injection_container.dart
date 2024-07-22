import 'package:get_it/get_it.dart';
import 'package:iclick_books_manager/features/landing/home/injection_container.dart'
    as home_di;

Future<void>? setup(GetIt di) {
  home_di.setup(di);
  return null;
}
