import 'package:first_app/game/enum.dart';
import 'package:first_app/game/widget/input_card.dart';
import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  final bool isDone;
  final InputType? userInput;
  final Function(InputType) callback;
  const UserInput({super.key, required this.isDone, required this.userInput, required this.callback});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Row(
        children: [
          Expanded(child: SizedBox.shrink()),
          InputCard(child: Image.asset(userInput!.path)),
          Expanded(child: SizedBox.shrink()),
        ],
      );
    }
    return Row(
      children: _getInputs(callback),
    );
  }

  List<Widget> _getInputs(Function(InputType) callback) {
    return InputType.values
        .map((type) => InputCard(
              child: Image.asset(type.path),
              callback: () => callback.call(type),
            ))
        .toList();
  }
}
