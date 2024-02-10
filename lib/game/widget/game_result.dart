import 'package:first_app/game/enum.dart';
import 'package:flutter/material.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final GameResultType? result;
  final VoidCallback callBack;

  const GameResult({super.key, required this.isDone, this.result, required this.callBack});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(result!.displayString, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () => callBack.call(),
            child: const Text('다시하기', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
        ],
      );
    }
    return const Center(
      child: Text(
        '가위, 바위, 보 중 하나를 선택해주세요.',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
