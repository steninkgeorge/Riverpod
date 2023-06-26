import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main.dart';

class homepage extends ConsumerWidget {
  homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameprovider);
    final isDarkTheme = ref.watch(isDarkThemeProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(name),
      ),
      body: Center(
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              isDarkTheme ? Icons.nightlight : Icons.wb_sunny,
              size: 30,
            )),
      ),
    );
  }
}
