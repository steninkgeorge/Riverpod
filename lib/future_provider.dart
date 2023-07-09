import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/main.dart';
import 'package:riverpod_/user.dart';

class futuresampleprovider extends ConsumerStatefulWidget {
  const futuresampleprovider({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _futuresampleproviderState();
}

class _futuresampleproviderState extends ConsumerState<futuresampleprovider> {
  String userno = "1";
  @override
  Widget build(BuildContext context) {
    return ref.watch(fetchUserProvider(userno)).when(data: (data) {
      return SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            TextField(
              onSubmitted: (value) => setState(() {
                userno = value;
              }),
            ),
            Center(
              child: Text(data.email),
            ),
          ],
        )),
      );
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

    // return Scaffold(
    //     body: ref.watch(streamProvider).when(data: (data) {
    //   return Center(
    //     child: Text(data.toString()),
    //   );
    // }, error: (error, StackTrace) {
    //   return Center(
    //     child: Text(error.toString()),
    //   );
    // }, loading: () {
    //   return const Center(
    //     child: CircularProgressIndicator(),
    //   );
    // }));
  }
}
