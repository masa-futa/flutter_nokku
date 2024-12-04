
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_go_router/routes/router.dart';

void main() {
  runApp(const App());
}

class App extends ConsumerWidget {
const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref){
    final router = ref.watch(goRouterProvider);
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
