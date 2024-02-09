import 'package:english_words/english_words.dart';
import 'package:first_app/screen/new_page.dart';
import 'package:flutter/material.dart';

const assetImagePath = 'assets/images/';
const bannerImage = '${assetImagePath}illustrator-basic-20-overview.webp';

void main() {
  runApp(
    const MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('화면 이동하기')),
        body: Center(
          child: TextButton(
            child: const Text('Go to page'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NewPage();
                  },
                ),
              );
            },
          ),
        ));
  }
}
