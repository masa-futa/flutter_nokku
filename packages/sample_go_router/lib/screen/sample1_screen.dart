import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_go_router/routes/router.dart';

class Sample1Screen extends StatelessWidget {
  const Sample1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go(Sample2Route.path),
          child: const Text('next'),
        ),
      ),
    );
  }
}
