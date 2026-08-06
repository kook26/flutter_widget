import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Padding', type: PaddingSample)
PaddingSample paddingSample(BuildContext context) {
  return const PaddingSample();
}

class PaddingSample extends StatelessWidget {
  const PaddingSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 30, 50),
        child: Text('Padding Sample'),
      ),
    );
  }
}
