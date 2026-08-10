import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'ProgressIndicator', type: ProgressIndicatorSample)
ProgressIndicatorSample progressIndicatorSample(BuildContext context) {
  return const ProgressIndicatorSample();
}

class ProgressIndicatorSample extends StatelessWidget {
  const ProgressIndicatorSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 30,
          mainAxisSize: MainAxisSize.min,
          children: [
            LinearProgressIndicator(value: 0.5),
            CircularProgressIndicator(
              value: 0.5,
              color: Colors.red,
              backgroundColor: Colors.red.withValues(alpha: 0.5),
            ),
          ],
        ),
      ),
    );
  }
}
