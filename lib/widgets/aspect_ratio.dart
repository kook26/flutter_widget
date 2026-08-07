import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'AspectRatio', type: AspectRatioSample)
AspectRatioSample aspectRatioSample(BuildContext context) {
  return const AspectRatioSample();
}

class AspectRatioSample extends StatelessWidget {
  const AspectRatioSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 300,
        child: AspectRatio(
          aspectRatio: 2 / 5,
          child: Container(color: Colors.red),
        ),
      ),
    );
  }
}
