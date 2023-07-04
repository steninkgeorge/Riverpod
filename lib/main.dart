import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/enum.dart';
import 'package:riverpod_/theme.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final iconProvdier = StateProvider((ref) => Icons.wb_sunny);

final themeProvider = StateProvider<bool>((ref) => true);

final counterController =
    StateProvider<counterNotifier>((ref) => counterNotifier());

class counterNotifier extends StateNotifier<int> {
  counterNotifier() : super(0);

  void add() {
    state = state + 1;
  }
}

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconProvider = ref.watch(iconProvdier);
    return MaterialApp(
        title: 'Flutter Demo',
        theme: iconProvider == Icons.wb_sunny ? ThemeData.light() : darkTheme,
        home: Scaffold());
  }
}
