import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'SizedBox', type: SizedBoxSample)
SizedBoxSample sizedBoxSample(BuildContext context) {
  return const SizedBoxSample();
}

class SizedBoxSample extends StatelessWidget {
  const SizedBoxSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: SizedBox(
          width: 200,
          height: 200,
          child: Text('SizedBox Sample', textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
