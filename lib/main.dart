import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

const assetImagePath = 'assets/images/';
const bannerImage = '${assetImagePath}illustrator-basic-20-overview.webp';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  void _onItemTapped(int index) {
    setState(() => this.index = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('화면 이동하기')),
      body: Body(homeBody),
      bottomNavigationBar: Bottom(index: index, onTap: _onItemTapped),
    );
  }

  Widget homeBody() {
    switch (index) {
      case 1:
        return Center(
          child: Icon(Icons.search, size: 100),
        );
      case 2:
        return Center(
          child: Icon(Icons.person, size: 100),
        );
      case 0:
      default:
        return Center(
          child: Icon(Icons.home, size: 100),
        );
    }
  }
}

class Body extends StatefulWidget {
  final Widget Function() homeBody;
  const Body(this.homeBody, {super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return widget.homeBody();
  }
}

class Bottom extends StatefulWidget {
  final int index;
  final ValueChanged<int> onTap;

  const Bottom({super.key, required this.index, required this.onTap});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
      ],
      currentIndex: widget.index,
      onTap: widget.onTap,
    );
  }
}
