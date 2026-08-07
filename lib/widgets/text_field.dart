import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'TextField', type: TextFieldSample)
TextFieldSample textFieldSample(BuildContext context) {
  return const TextFieldSample();
}

class TextFieldSample extends StatelessWidget {
  const TextFieldSample({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
      body: TextField(
        controller: controller,
        onChanged: (value) {
          print('Input value: $value');
        },
        onSubmitted: (value) {
          print('Submitted value: $value');
          print('Current controller text: ${controller.text}');
        },
        onTap: () {
          print('TextField tapped');
        },
      ),
    );
  }
}
