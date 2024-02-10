import 'dart:math';

import 'package:first_app/game/enum.dart';
import 'package:first_app/game/widget/cpu_input.dart';
import 'package:first_app/game/widget/game_result.dart';
import 'package:first_app/game/widget/user_input.dart';
import 'package:flutter/material.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  late bool isDone;
  InputType? _userInput;
  late InputType _cpuInput;

  @override
  void initState() {
    super.initState();
    isDone = false;
    setCpuInput();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CpuInput(isDone: isDone, cpuInput: _cpuInput)),
        Expanded(child: GameResult(isDone: isDone, result: getResult(), callBack: reset)),
        Expanded(child: UserInput(isDone: isDone, callback: setUserInput, userInput: _userInput)),
      ],
    );
  }

  void setUserInput(InputType userInput) {
    setState(() {
      isDone = true;
      _userInput = userInput;
    });
  }

  void setCpuInput() {
    final random = Random();
    _cpuInput = InputType.values[random.nextInt(3)];
  }

  GameResultType? getResult() {
    if (_userInput == null) return null;
    switch (_userInput!) {
      case InputType.rock:
        return _cpuInput == InputType.scissors
            ? GameResultType.playerWin
            : _cpuInput == InputType.rock
                ? GameResultType.draw
                : GameResultType.cpuWin;

      case InputType.scissors:
        return _cpuInput == InputType.paper
            ? GameResultType.playerWin
            : _cpuInput == InputType.scissors
                ? GameResultType.draw
                : GameResultType.cpuWin;

      case InputType.paper:
        return _cpuInput == InputType.rock
            ? GameResultType.playerWin
            : _cpuInput == InputType.paper
                ? GameResultType.draw
                : GameResultType.cpuWin;
    }
  }

  void reset() {
    setState(() {
      isDone = false;
      _userInput = null;
      setCpuInput();
    });
  }
}
