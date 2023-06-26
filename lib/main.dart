import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/homepage.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final nameprovider = Provider((ref) => 'stenin');
final isDarkThemeProvider = Provider<bool>((ref) => false);

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: homepage());
  }
}
