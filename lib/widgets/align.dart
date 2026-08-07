import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Align', type: AlignSample)
AlignSample alignSample(BuildContext context) {
  return const AlignSample();
}

class AlignSample extends StatelessWidget {
  const AlignSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(alignment: Alignment.center, child: Text('Align Sample')),
    );
  }
}
