import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 상하로 배치하기'),
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 상하 정렬
        crossAxisAlignment: CrossAxisAlignment.start, // 좌우 정렬
        children: [
          Container(width: 100, height: 80, color: Colors.red, child: Text('Container 1')),
          Container(width: 100, height: 80, color: Colors.green, child: Text('Container 2')),
          Container(width: 100, height: 80, color: Colors.blue, child: Text('Container 3')),
        ],
      ),
    );
  }
}
