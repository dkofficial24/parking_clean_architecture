import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di_injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependency(String env) {
  getIt.init(environment: env);
}
