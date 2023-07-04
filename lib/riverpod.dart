import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/main.dart';
import 'package:riverpod_/user.dart';

class homepage extends ConsumerWidget {
  const homepage({super.key});

  void onSubmit(WidgetRef ref, String value) {
    // ref.read(nameProvider.notifier).update((state) => value);

    ref.read(userProvider.notifier).updateName(value);
  }

  void onSubmitAge(WidgetRef ref, String value) {
    // ref.read(nameProvider.notifier).update((state) => value);

    ref.read(userProvider.notifier).updateAge(int.parse(value));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider) ?? ''; //if null then give empty string

    final user = ref.watch(userProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text(user.name),
        ),
        body: Column(
          children: [
            TextField(
              onSubmitted: (value) => onSubmit(ref, value),
            ),
            TextField(
              onSubmitted: (value) => onSubmitAge(ref, value),
            ),
            Center(
              child: Text(user.age.toString()),
            )
          ],
        ));
  }
}
