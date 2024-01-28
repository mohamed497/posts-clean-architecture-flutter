import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @LazySingleton()
  @Named('base_url')
  @prod
  @dev
  String get baseUrl => const String.fromEnvironment('base_url',
      defaultValue: 'https://api.dermacityapp.com/api/');
}
