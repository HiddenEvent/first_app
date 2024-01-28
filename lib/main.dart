import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(actions: [
      IconButton(
        icon: Icon(Icons.home),
        onPressed: () {
          print('Home button is pressed');
        },
      ),
      IconButton(
        icon: Icon(Icons.play_arrow),
        onPressed: () {
          print('Play button is pressed');
        },
      ),
    ], centerTitle: false, title: Text('This is App Bar')),
    body: TestWidget(),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.bug_report),
      onPressed: () {
        print('Tab! FAB!');
      },
    ),
  )));
}

class TestWidget extends StatelessWidget {
  const TestWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text(
          'Hello, flutter!',
          style: TextStyle(
            fontSize: 40,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
