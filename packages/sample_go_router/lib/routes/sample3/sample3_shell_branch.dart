import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_go_router/screen/sample3_screen.dart';

const sample3ShellBranch = TypedStatefulShellBranch<Sample3ShellBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<Sample3Route>(path: Sample3Route.path),
  ],
);

class Sample3ShellBranch extends StatefulShellBranchData {
  const Sample3ShellBranch();
}

class Sample3Route extends GoRouteData {
  const Sample3Route();

  static const path = '/sample3';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Sample3Screen();
  }
}
