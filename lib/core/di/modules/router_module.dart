// coverage:ignore-file
import 'package:injectable/injectable.dart';
import 'package:to_do_list/core/router/app_router.dart';

@module
abstract class RouterModule {
  @singleton
  AppRouter getRouter() => AppRouter();
}
