import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'GestureDetector', type: GestureDetectorSample)
GestureDetectorSample gestureDetectorSample(BuildContext context) {
  return const GestureDetectorSample();
}

class GestureDetectorSample extends StatelessWidget {
  const GestureDetectorSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          print('Tapped!');
        },
        onDoubleTap: () {
          print('Double Tapped!');
        },
        onLongPress: () {
          print('Long Tapped!');
        },
        child: Container(width: 200, height: 290, color: Colors.red),
      ),
    );
  }
}
