import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/main.dart';
import 'package:riverpod_/user.dart';

class homepage extends ConsumerWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref
        .watch(fetchUserProvider)
        .when(data: (data) {}, error: (error, StackTrace) {}, loading: () {});
    return const Scaffold(
        body: Center(
      child: Text(''),
    ));
  }
}
