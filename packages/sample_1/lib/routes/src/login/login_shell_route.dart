
part of 'package:sample_1/routes/src/router.dart';

@TypedGoRoute<LoginPageRoute>(path: LoginPageRoute.path)
class LoginPageRoute extends GoRouteData {
  const LoginPageRoute();

  static const path = '/login';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}
