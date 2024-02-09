import 'package:english_words/english_words.dart';
import 'package:first_app/screen/new_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const assetImagePath = 'assets/images/';
const bannerImage = '${assetImagePath}illustrator-basic-20-overview.webp';

void main() {
  runApp(
    MaterialApp.router(
        routerConfig: GoRouter(
      routes: [
        GoRoute(path: '/', name: 'home', builder: (context, _) => const Home()),
        GoRoute(path: '/new', name: 'new', builder: (context, _) => const NewPage()),
        GoRoute(path: '/new2', name: 'new2', builder: (context, _) => const NewPage2()),
      ],
    )),
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
              context.pushNamed('new');
            },
          ),
        ));
  }
}
