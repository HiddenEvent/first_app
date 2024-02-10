import 'package:flutter/material.dart';

void main() {
  runApp(const InstaCloneApp());
}

class InstaCloneApp extends StatelessWidget {
  const InstaCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InstaCloneHome(),
    );
  }
}

class InstaCloneHome extends StatelessWidget {
  const InstaCloneHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
