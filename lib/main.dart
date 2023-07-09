import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/counter.dart';
import 'package:riverpod_/future_provider.dart';
import 'package:riverpod_/user.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final nameProvider = StateProvider<String?>((ref) => null);

final numberProvider = StateProvider<int>((ref) => 0);

final fetchUserProvider = FutureProvider((ref) {
  return userRepository().fetchUserData();
});

//inside statenotifierprovider two datatypes are mentioned
//one is usernotifier which is the class which is returned
//second is the datatype user which is the state of the class we have returned

// final userProvider =
//     StateNotifierProvider<UserNotifier, User>((ref) => UserNotifier());

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(title: 'Flutter Demo', home: futureSampleProvider());
  }
}
