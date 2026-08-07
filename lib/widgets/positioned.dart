import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Positioned', type: PositionedSample)
PositionedSample positionedSample(BuildContext context) {
  return const PositionedSample();
}

class PositionedSample extends StatelessWidget {
  const PositionedSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(left: 20, top: 100, child: Text('Positioned Sample1')),
            Positioned(
              right: 100,
              bottom: 200,
              child: Text('Positioned Sample2'),
            ),
          ],
        ),
      ),
    );
  }
}
