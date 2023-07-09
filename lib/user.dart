// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class User {
  final String name;
  final String email;

  User({
    required this.name,
    required this.email,
  });

  User copyWith({
    String? name,
    int? age,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'User(name: $name, age: $email)';

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.name == name && other.email == email;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode;
}

//the state is immutable outside this class
//the value of the state can only be changed inside this class

// class UserNotifier extends StateNotifier<User> {
//   UserNotifier() : super(User(name: 'Type Something', age: 0));

//   void updateName(String n) {
//     state = state.copyWith(name: n);
//   }

//   void updateAge(int a) {
//     state = state.copyWith(age: a);
//   }

final userRepositoryprovider = Provider((ref) => userRepository());

class userRepository {
  Future<User> fetchUserData(String input) {
    var url = "https://jsonplaceholder.typicode.com/users/$input";
    return http.get(Uri.parse(url)).then((value) => User.fromJson(value.body));
  }
}
