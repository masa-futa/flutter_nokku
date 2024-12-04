part of '../router.dart';

const sample2ShellBranch = TypedStatefulShellBranch<Sample2ShellBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<Sample2Route>(path: Sample2Route.path),
  ],
);

class Sample2ShellBranch extends StatefulShellBranchData {
  const Sample2ShellBranch();
}

class Sample2Route extends GoRouteData {
  const Sample2Route();

  static const path = '/sample2';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Sample2Screen();
  }
}
