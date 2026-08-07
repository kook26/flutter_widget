import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Column', type: ColumnSample)
ColumnSample columnSample(BuildContext context) {
  return const ColumnSample();
}

class ColumnSample extends StatelessWidget {
  const ColumnSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        spacing: 30,
        children: [Text('Item 1'), Text('長めの文字を表示'), Text('Item 3')],
      ),
    );
  }
}
