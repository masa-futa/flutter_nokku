import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_1/login/login.dart';
import 'package:sample_1/main.dart';
import 'package:sample_1/profile/profile.dart';

part 'login/login_shell_route.dart';
part 'page_shell_route.dart';
part 'profile/profile_shell_branch.dart';
part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) => GoRouter(
      routes: [
        ...$appRoutes,
      ],
      initialLocation: LoginPageRoute.path,
    );
