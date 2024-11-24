import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_1/login/login.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        home: LoginScreen(),
      ),
    ),
  );
}
