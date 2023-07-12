import 'package:flutter/material.dart';

ColorScheme kcolorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 125, 15, 251),
  brightness: Brightness.dark,
);

ThemeData customThemeData = ThemeData.dark().copyWith(
  useMaterial3: true,
  colorScheme: kcolorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: kcolorScheme.onPrimary,
    ),
  ),
  textTheme: const TextTheme().copyWith(
    titleLarge: const TextStyle(fontSize: 35),
    titleMedium: const TextStyle(fontSize: 35),
    titleSmall: const TextStyle(fontSize: 20),
    labelLarge: const TextStyle(fontSize: 15),
    labelMedium: const TextStyle(fontSize: 15),
    labelSmall: const TextStyle(fontSize: 10),
  ),
);
