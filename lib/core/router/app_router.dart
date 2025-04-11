import 'package:auto_route/auto_route.dart';
import 'package:to_do_list/features/home/view/view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter() : super();

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/home',
          page: HomeRoute.page,
        ),
      ];
}
