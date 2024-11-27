part of 'package:sample_1/routes/src/router.dart';

@TypedStatefulShellRoute<PageShellRoute>(
  branches: [
    profileShellBranch,
    profileShellBranch,
  ],
)
class PageShellRoute extends StatefulShellRouteData {
  const PageShellRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return BaseScreen(navigationShell: navigationShell);
  }
}
