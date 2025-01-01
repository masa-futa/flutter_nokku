import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'theme.tailor.dart';

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class LightTheme extends ThemeExtension<LightTheme>
    with _$LightThemeTailorMixin {
  const LightTheme({
    this.primary = const Color(0xff6200ee),
    this.onPrimary = Colors.white,
    this.secondary = const Color(0xff03dac6),
    this.onSecondary = Colors.black,
    this.error = const Color(0xffb00020),
    this.onError = Colors.white,
    this.background = Colors.white,
    this.onBackground = Colors.black,
    this.surface = Colors.white,
    this.onSurface = Colors.black,
  });
  @override
  final Color primary;
  @override
  final Color onPrimary;
  @override
  final Color secondary;
  @override
  final Color onSecondary;
  @override
  final Color error;
  @override
  final Color onError;
  @override
  final Color background;
  @override
  final Color onBackground;
  @override
  final Color surface;
  @override
  final Color onSurface;
}

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class DarkTheme extends ThemeExtension<DarkTheme> with _$DarkThemeTailorMixin {
  const DarkTheme({
    this.primary = const Color(0xffbb86fc),
    this.onPrimary = Colors.black,
    this.secondary = const Color(0xff03dac6),
    this.onSecondary = Colors.black,
    this.error = const Color(0xffcf6679),
    this.onError = Colors.black,
    this.background = const Color(0xff121212),
    this.onBackground = Colors.white,
    this.surface = const Color(0xff121212),
    this.onSurface = Colors.white,
  });
  @override
  final Color primary;
  @override
  final Color onPrimary;
  @override
  final Color secondary;
  @override
  final Color onSecondary;
  @override
  final Color error;
  @override
  final Color onError;
  @override
  final Color background;
  @override
  final Color onBackground;
  @override
  final Color surface;
  @override
  final Color onSurface;
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // routerConfig: router,
      theme: ThemeData.light().copyWith(
        extensions: [const LightTheme()],
      ),
      darkTheme: ThemeData.dark().copyWith(
        extensions: [const DarkTheme()],
      ),
    );
  }
}

class Sample1Screen extends StatelessWidget {
  const Sample1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Sample 1',
                style: TextStyle(
                  color: context.lightTheme.primary,
                ),
              ),
              background: ColoredBox(color: context.lightTheme.background),
            ),
          ),
          SliverList.list(
            children: [
              Text(
                'hoge',
                style: TextStyle(
                  color: context.lightTheme.secondary,
                ),
              ),
              Text(
                'fuga',
                style: TextStyle(
                  color: context.lightTheme.error,
                ),
              ),
            ],
          ),
          // SliverFixedExtentList(delegate: delegate, itemExtent: itemExtent)
        ],
      ),
    );
  }
}
