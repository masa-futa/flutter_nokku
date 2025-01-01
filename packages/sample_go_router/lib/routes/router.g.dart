// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $pageShellRoute,
      $sample1Route,
    ];

RouteBase get $pageShellRoute => StatefulShellRouteData.$route(
      factory: $PageShellRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/sample2',
              factory: $Sample2RouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/sample3',
              factory: $Sample3RouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $PageShellRouteExtension on PageShellRoute {
  static PageShellRoute _fromState(GoRouterState state) =>
      const PageShellRoute();
}

extension $Sample2RouteExtension on Sample2Route {
  static Sample2Route _fromState(GoRouterState state) => const Sample2Route();

  String get location => GoRouteData.$location(
        '/sample2',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Sample3RouteExtension on Sample3Route {
  static Sample3Route _fromState(GoRouterState state) => const Sample3Route();

  String get location => GoRouteData.$location(
        '/sample3',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $sample1Route => GoRouteData.$route(
      path: '/sample1',
      factory: $Sample1RouteExtension._fromState,
    );

extension $Sample1RouteExtension on Sample1Route {
  static Sample1Route _fromState(GoRouterState state) => Sample1Route();

  String get location => GoRouteData.$location(
        '/sample1',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goRouterHash() => r'6e28725af601229a1651fcbe5eb008259a418fd8';

/// See also [goRouter].
@ProviderFor(goRouter)
final goRouterProvider = Provider<GoRouter>.internal(
  goRouter,
  name: r'goRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GoRouterRef = ProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
