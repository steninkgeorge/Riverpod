import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/enum.dart';
import 'package:riverpod_/riverpod.dart';
import 'package:riverpod_/theme.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final nameProvider = Provider((ref) => 'stenin');

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(title: 'Flutter Demo', home: homepage());
  }
}
