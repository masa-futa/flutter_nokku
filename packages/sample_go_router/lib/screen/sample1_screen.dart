import 'package:flutter/material.dart';
import 'package:sample_go_router/theme/theme.dart';

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
                  color: context.lightTheme.background,
                ),
              ),
              background: const ColoredBox(color: Colors.red),
            ),
          ),
          // SliverFixedExtentList(delegate: delegate, itemExtent: itemExtent)
        ],
      ),
    );
  }
}
