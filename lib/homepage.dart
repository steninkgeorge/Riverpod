import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main.dart';

class homepage extends ConsumerWidget {
  homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameprovider);
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
    );
  }
}
