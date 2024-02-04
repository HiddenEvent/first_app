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
      height: double.infinity, // 높이를 최대로 설정
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // 가로로 중앙에 배치
        crossAxisAlignment: CrossAxisAlignment.center, // 세로로 중앙에 배치
        children: [
          Container(width: 100, height: 80, color: Colors.red, child: Text('Container 1')),
          Container(width: 100, height: 80, color: Colors.green, child: Text('Container 2')),
          Container(width: 100, height: 80, color: Colors.blue, child: Text('Container 3')),
        ],
      ),
    );
  }
}
