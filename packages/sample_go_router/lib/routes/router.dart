import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_go_router/base_app.dart';
import 'package:sample_go_router/screen/sample1_screen.dart';
import 'package:sample_go_router/screen/sample2_screen.dart';

part 'page_shell_route.dart';
part 'router.g.dart';
part 'sample1/sample1_go_route.dart';
part 'sample2/sample2_shell_branch.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(Ref ref) => GoRouter(
      routes: [
        ...$appRoutes,
      ],
      initialLocation: Sample1Route.path,
    );
