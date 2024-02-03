import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Study to Container'),
        ),
        body: CustomContainer(),
      ),
    ),
  );
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: double.infinity, // 좌우 꽉 차게
        // height: double.infinity, // 상하 꽉 차게
        width: 300,
        height: 300,
        color: Color(0xFF7DCE76),
        // padding: EdgeInsets.fromLTRB(10, 12, 10, 12),
        // margin: EdgeInsets.symmetric(vertical: 24, horizontal: 30),
        child: Center(
          child: Container(
            color: Colors.yellow,
            child: Text('Hello Container'),
          ),
        ),
      ),
    );
  }
}
