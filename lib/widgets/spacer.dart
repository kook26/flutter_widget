import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Spacer', type: SpacerSample)
SpacerSample spacerSample(BuildContext context) {
  return const SpacerSample();
}

class SpacerSample extends StatelessWidget {
  const SpacerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Container(width: 30, height: 30, color: Colors.red),
            Spacer(flex: 2),
            Container(width: 30, height: 30, color: Colors.blue),
            Spacer(flex: 3),
            Container(width: 30, height: 30, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
