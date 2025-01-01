import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_go_router/routes/router.dart';
import 'package:sample_go_router/theme/theme.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData.light().copyWith(
        extensions: [const LightTheme()],
      ),
      darkTheme: ThemeData.dark().copyWith(
        extensions: [const DarkTheme()],
      ),
    );
  }
}
