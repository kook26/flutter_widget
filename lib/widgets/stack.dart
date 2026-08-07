import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Stack', type: StackSample)
StackSample stackSample(BuildContext context) {
  return const StackSample();
}

class StackSample extends StatelessWidget {
  const StackSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            width: 300,
            height: 500,
            color: Colors.red,
            alignment: Alignment.center,
            child: Text('下に表示'),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text('上に表示'),
          ),
        ],
      ),
    );
  }
}
