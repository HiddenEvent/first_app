import 'package:first_app/game/game_body.dart';
import 'package:flutter/material.dart';

const assetImagePath = 'assets/images/';
const bannerImage = '${assetImagePath}illustrator-basic-20-overview.webp';

void main() {
  runApp(const RSPApp());
}

class RSPApp extends StatelessWidget {
  const RSPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('가위 바위 보!'),
        ),
        body: const GameBody(),
      ),
    );
  }
}
