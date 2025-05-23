import 'package:auto_route/auto_route.dart';
import 'package:daynex_demo/app/common/router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
final class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page,),
        AutoRoute(page: AllCharacterRoute.page),
      ];
}
