import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class homepage extends ConsumerWidget {
  homepage({super.key});

  late String name;

  ProviderListenable<String>? get nameprovider => null;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    name = ref.watch(nameprovider!);
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
    );
  }
}
