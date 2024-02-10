import 'package:flutter/material.dart';

final customTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontWeight: FontWeight.normal, fontSize: 30, color: Colors.black),
  ),
  useMaterial3: false,
);
