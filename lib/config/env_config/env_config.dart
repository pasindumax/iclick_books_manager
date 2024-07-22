import 'package:iclick_books_manager/config/constants/endpoints.dart';
import 'package:iclick_books_manager/config/env_config/env.dart';

class EnvConfig {
  Env buildEnv = Env.dev;

  final EndPoints endPoints;

  EnvConfig({required this.endPoints});

  String get baseUrl {
    switch (buildEnv) {
      case Env.dev:
        return 'https://api.itbook.store/1.0/';
      case Env.qa:
        return '';
      case Env.uat:
        return '';
      case Env.prod:
        return '';
    }
  }

  String? get publicApiGateway => baseUrl;

  Map<String, String>? get requestHeader => {
        'Content-Type': 'application/json',
      };
}
