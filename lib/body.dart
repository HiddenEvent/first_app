import 'package:first_app/screen/home_screen.dart';
import 'package:first_app/screen/search_screen.dart';

import 'package:flutter/material.dart';

class InstaBody extends StatelessWidget {
  final int index;
  const InstaBody({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return const HomeScreen();
    }
    return const SearchScreen();
  }
}
