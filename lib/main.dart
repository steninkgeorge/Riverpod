import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final nameprovider = Provider((ref) => 'stenin');
final iconProvdier = StateProvider((ref) => Icons.wb_sunny);

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          useMaterial3: true,
        ),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        home: Scaffold(
          body: Center(
            child: Consumer(builder: (context, ref, child) {
              final iconData = ref.watch(iconProvdier);

              return IconButton(
                icon: Icon(iconData),
                onPressed: () {
                  final newIcon = iconData == Icons.wb_sunny
                      ? Icons.nightlight_round
                      : Icons.wb_sunny;

                  ref.read(iconProvdier.notifier).state = newIcon;
                },
              );
            }),
          ),
        ));
  }
}
