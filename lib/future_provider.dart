import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/main.dart';
import 'package:riverpod_/user.dart';

class futureSampleProvider extends ConsumerWidget {
  const futureSampleProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchUserProvider).when(data: (data) {
      return Scaffold(
          body: Center(
        child: Text(data.email),
      ));
    }, error: (error, StackTrace) {
      return Scaffold(
        body: Center(
          child: Text(error.toString()),
        ),
      );
    }, loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
