import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Scaffold', type: TextSample)
TextSample textSample(BuildContext context) {
  return const TextSample();
}

class TextSample extends StatelessWidget {
  const TextSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        width: 500,
        child: Text(
          'Text Sample',
          style: TextStyle(
            fontSize: 50,
            color: Colors.green,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            fontStyle: FontStyle.italic,
          ),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
