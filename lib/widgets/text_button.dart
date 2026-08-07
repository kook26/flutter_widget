import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'TextButton', type: TextButtonSample)
TextButtonSample textButtonSample(BuildContext context) {
  return const TextButtonSample();
}

class TextButtonSample extends StatelessWidget {
  const TextButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 400,
          height: 300,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.green,
            ),
            onPressed: () {
              print('タップされました');
            },
            child: Text('テキストボタン'),
          ),
        ),
      ),
    );
  }
}
