import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Row', type: RowSample)
RowSample rowSample(BuildContext context) {
  return const RowSample();
}

class RowSample extends StatelessWidget {
  const RowSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        spacing: 50,
        children: [
          Text('Row Sample 1'),
          Text('Row Sample 2\n縦に長い'),
          Text('Row Sample 3'),
        ],
      ),
    );
  }
}
