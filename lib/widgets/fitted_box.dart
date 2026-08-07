import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'FittedBox', type: FittedBoxSample)
FittedBoxSample fittedBoxSample(BuildContext context) {
  return const FittedBoxSample();
}

class FittedBoxSample extends StatelessWidget {
  const FittedBoxSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FittedBox(
            child: Row(
              children: [
                Text('長めのテキストを表示しています。', style: TextStyle(fontSize: 32)),
              ],
            ),
          ),
          Row(children: [Text('短めのテキスト。', style: TextStyle(fontSize: 32))]),
        ],
      ),
    );
  }
}
