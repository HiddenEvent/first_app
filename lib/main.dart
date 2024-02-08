import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const assetImagePath = 'assets/images/';
const bannerImage = '${assetImagePath}illustrator-basic-20-overview.webp';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('로컬 자원 활용하기')),
        body: const Body(),
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
    return Center(
      child: Image.asset(bannerImage),
    );
  }
}
