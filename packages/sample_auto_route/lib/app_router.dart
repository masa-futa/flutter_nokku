import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_auto_route/app_router.gr.dart';
import 'package:sample_auto_route/auth_guard.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) => AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, guards: [AuthGuard()]),
      ];

  @override
  List<AutoRouteGuard> get guards => [];
}
