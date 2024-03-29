import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          StoryArea(),
          FeedList(),
        ],
      ),
    );
  }
}

class StoryArea extends StatelessWidget {
  const StoryArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(10, (index) => UserStory(userName: 'User $index')),
      ),
    );
  }
}

class UserStory extends StatelessWidget {
  final String userName;
  const UserStory({
    super.key,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
          Text(userName)
        ],
      ),
    );
  }
}

class FeedData {
  final String userName;
  final int likeCount;
  final String content;

  FeedData({required this.userName, required this.likeCount, required this.content});
}

final feedDataList = [
  FeedData(userName: 'User 1', likeCount: 10, content: '테스트용 컨텐츠 입니다.테스트용 컨텐츠 입니다.테스트용 컨텐츠 입니다.테스트용 컨텐츠 입니다.테스트용 컨텐츠 입니다.테스트용 컨텐츠 입니다. '),
  FeedData(userName: 'User 2', likeCount: 20, content: 'Content 2'),
  FeedData(userName: 'User 3', likeCount: 30, content: 'Content 3'),
  FeedData(userName: 'User 4', likeCount: 40, content: 'Content 4'),
  FeedData(userName: 'User 5', likeCount: 50, content: 'Content 5'),
  FeedData(userName: 'User 6', likeCount: 60, content: 'Content 6'),
  FeedData(userName: 'User 7', likeCount: 70, content: 'Content 7'),
  FeedData(userName: 'User 8', likeCount: 80, content: 'Content 8'),
  FeedData(userName: 'User 9', likeCount: 90, content: 'Content 9'),
];

class FeedList extends StatelessWidget {
  const FeedList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: feedDataList.length,
      itemBuilder: (context, index) => FeedItem(feedData: feedDataList[index]),
    );
  }
}

class FeedItem extends StatelessWidget {
  final FeedData feedData;
  const FeedItem({
    super.key,
    required this.feedData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade300,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(feedData.userName),
                ],
              ),
              const Icon(Icons.more_vert)
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.indigo.shade300,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
                  IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.chat_bubble)),
                  IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.paperplane)),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bookmark))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text('좋아요 ${feedData.likeCount}개', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(text: feedData.userName, style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: feedData.content),
              ],
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
