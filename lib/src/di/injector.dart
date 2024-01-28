import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies({String? environment}) async {
  await $initGetIt(getIt, environmentFilter: NoEnvOrContains(environment));
}

T inject<T extends Object>({String? instanceName}) {
  return getIt.get<T>(instanceName: instanceName);
}
