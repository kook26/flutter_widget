import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'RichText', type: RichTextSample)
RichTextSample richTextSample(BuildContext context) {
  return const RichTextSample();
}

class RichTextSample extends StatelessWidget {
  const RichTextSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'これは',
              style: TextStyle(fontSize: 16, color: Colors.blue),
            ),
            TextSpan(
              text: 'リッチな',
              style: TextStyle(
                fontSize: 32,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  print('リッチな部分がタップされました。');
                },
            ),
            TextSpan(
              text: '文字列です。',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
