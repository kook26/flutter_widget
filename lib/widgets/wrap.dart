import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Wrap', type: WrapSample)
WrapSample wrapSample(BuildContext context) {
  return const WrapSample();
}

class WrapSample extends StatelessWidget {
  const WrapSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        spacing: 20,
        runSpacing: 20,
        direction: Axis.vertical,
        children: List.generate(20, (index) => Text('Item $index')),
      ),
    );
  }
}
