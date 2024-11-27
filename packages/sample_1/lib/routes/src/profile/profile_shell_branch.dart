part of 'package:sample_1/routes/src/router.dart';

const profileShellBranch = TypedStatefulShellBranch<ProfileShellBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<ProfilePageRoute>(path: ProfilePageRoute.path),
  ],
);

class ProfileShellBranch extends StatefulShellBranchData {
  const ProfileShellBranch();
}

class ProfilePageRoute extends GoRouteData {
  const ProfilePageRoute();

  static const path = '/profile';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfileScreen();
  }
}
