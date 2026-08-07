import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Expanded', type: ExpandedSample)
ExpandedSample expandedSample(BuildContext context) {
  return const ExpandedSample();
}

class ExpandedSample extends StatelessWidget {
  const ExpandedSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 300,
        height: 300,
        color: Colors.red,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(width: 100, height: 100, color: Colors.grey),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 500,
                    height: 100,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
