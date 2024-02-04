import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 비율로 배치하기'),
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
    return Stack(
      children: [
        Container(width: 500, height: 500, color: Colors.black),
        Container(width: 400, height: 400, color: Colors.red),
        Container(width: 300, height: 300, color: Colors.green),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
