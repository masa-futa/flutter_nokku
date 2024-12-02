part of '../router.dart';

@TypedGoRoute<Sample1Route>(path: Sample1Route.path)
class Sample1Route extends GoRouteData {
  
  static const path = '/sample1';
  
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Sample1Screen();
  }
}
