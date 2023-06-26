import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final nameprovider = Provider((ref) => 'stenin');
final iconProvdier = StateProvider((ref) => Icons.wb_sunny);

final themeProvider = StateProvider<bool>((ref) => true);

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconProvider = ref.watch(iconProvdier);
    return MaterialApp(
        title: 'Flutter Demo',
        theme: iconProvider == Icons.wb_sunny
            ? ThemeData.light()
            : ThemeData.dark(),
        home: Scaffold(
          body: Center(
            child: Consumer(builder: (context, ref, child) {
              final iconData = ref.watch(iconProvdier);

              return IconButton(
                icon: Icon(iconData),
                onPressed: () {
                  ref.read(iconProvdier.notifier).state =
                      iconData == Icons.wb_sunny
                          ? Icons.nightlight_outlined
                          : Icons.wb_sunny;
                },
              );
            }),
          ),
        ));
  }
}
