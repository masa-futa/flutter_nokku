part of 'router.dart';

@TypedStatefulShellRoute<PageShellRoute>(
  branches: [
    sample2ShellBranch,
    sample3ShellBranch,
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
    return BaseApp(navigationShell: navigationShell);
  }
}
