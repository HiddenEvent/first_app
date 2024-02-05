import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('다양한 Flutter 의 입력 알아보기')),
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
    return const Column(
      children: [
        TestCheckBox(),
        TestRadioButton(),
      ],
    );
  }
}

class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  late List<bool> values;

  @override
  void initState() {
    super.initState();
    values = List<bool>.filled(3, false);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: values[0], onChanged: (value) => changeValue(0, value: value)),
        Checkbox(value: values[1], onChanged: (value) => changeValue(1, value: value)),
        Checkbox(value: values[2], onChanged: (value) => changeValue(2, value: value)),
      ],
    );
  }

  void changeValue(int index, {bool? value = false}) {
    setState(() {
      values[index] = value!;
    });
  }
}

class TestRadioButton extends StatefulWidget {
  const TestRadioButton({super.key});

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

enum TestRadioValue {
  test1,
  test2,
  test3;
}

class _TestRadioButtonState extends State<TestRadioButton> {
  TestRadioValue? selectValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('test1'),
          leading: Radio<TestRadioValue>(
            value: TestRadioValue.test1,
            groupValue: selectValue,
            onChanged: (value) => setState(() => selectValue = value!),
          ),
        ),
        ListTile(
          title: const Text('test2'),
          leading: Radio<TestRadioValue>(
            value: TestRadioValue.test2,
            groupValue: selectValue,
            onChanged: (value) => setState(() => selectValue = value!),
          ),
        ),
        ListTile(
          title: const Text('test3'),
          leading: Radio<TestRadioValue>(
            value: TestRadioValue.test3,
            groupValue: selectValue,
            onChanged: (value) => setState(() => selectValue = value!),
          ),
        ),
      ],
    );
  }
}
