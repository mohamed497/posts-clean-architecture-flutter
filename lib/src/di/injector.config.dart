// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/posts_list/bloc/posts_cubit.dart' as _i3;
import '../repo/posts_repo_impl.dart' as _i4;
import 'app_module.dart' as _i5;

const String _prod = 'prod';
const String _dev = 'dev';

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.factory<_i3.PostsCubit>(() => _i3.PostsCubit());
  gh.factory<_i4.PostsRepoImpl>(() => _i4.PostsRepoImpl());
  gh.lazySingleton<String>(
    () => appModule.baseUrl,
    instanceName: 'base_url',
    registerFor: {
      _prod,
      _dev,
    },
  );
  return getIt;
}

class _$AppModule extends _i5.AppModule {}
