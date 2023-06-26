import 'package:flutter/material.dart';

final lightTheme = ThemeData.dark().copyWith(
  // Adjust the color properties for dark mode here
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.blue, // Change the primary color
  // Change the accent color
  // You can modify other color properties as well to achieve the desired effect
);

final darkTheme = ThemeData.dark().copyWith(
  // Adjust the color properties for dark mode here
  scaffoldBackgroundColor: Colors.grey[900],
  primaryColor: Colors.blue,

  // Change the primary color
  // Change the accent color
  // You can modify other color properties as well to achieve the desired effect
);
