import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/main.dart';

class counter extends StatelessWidget {
  const counter({super.key});

  void add(WidgetRef ref, int num) {
    ref.read(numberProvider.notifier).update((state) => num);
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Consumer(builder: (context, ref, child) {
      int num = ref.watch(numberProvider);
      return Scaffold(
          appBar: AppBar(
            title: Text("riverpod"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              num = num + 1;
              add(ref, num);
            },
            child: Icon(Icons.home),
          ),
          body: Center(child: Text(num.toString())));
    });
  }
}
