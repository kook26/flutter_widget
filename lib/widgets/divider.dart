import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Divider', type: DividerSample)
DividerSample dividerSample(BuildContext context) {
  return const DividerSample();
}

class DividerSample extends StatelessWidget {
  const DividerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Above the divider'),
          Divider(
            height: 40,
            thickness: 5,
            color: Colors.black,
            indent: 15,
            endIndent: 15,
            radius: BorderRadius.circular(20),
          ),
          Text('Below the divider'),
        ],
      ),
    );
  }
}
