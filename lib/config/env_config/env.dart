import 'package:json_annotation/json_annotation.dart';

enum Env {
  @JsonValue('dev')
  dev,
  @JsonValue('qa')
  qa,
  @JsonValue('uat')
  uat,
  @JsonValue('production')
  prod,
}

extension EnvExtension on Env {
  String get jsonValue {
    switch (this) {
      case Env.dev:
        return 'dev';
      case Env.qa:
        return 'qa';
      case Env.prod:
        return 'production';
      case Env.uat:
        return 'uat';
    }
  }
}
