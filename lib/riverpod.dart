import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/main.dart';

class homepage extends ConsumerWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
              child: Text(name),
            )
          ],
        ));
  }
}
