import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Opacity', type: OpacitySample)
OpacitySample opacitySample(BuildContext context) {
  return const OpacitySample();
}

class OpacitySample extends StatelessWidget {
  const OpacitySample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(opacity: 1, child: Text('Opacity 1.0')),
            Opacity(opacity: 0.0, child: Text('Opacity 0.0')),
            Opacity(opacity: 0.5, child: Text('Opacity 0.5')),
          ],
        ),
      ),
    );
  }
}
