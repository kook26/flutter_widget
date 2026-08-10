import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'AnimatedSize', type: AnimatedSizeSample)
AnimatedSizeSample animatedSizeSample(BuildContext context) {
  return const AnimatedSizeSample();
}

class AnimatedSizeSample extends StatefulWidget {
  const AnimatedSizeSample({super.key});

  @override
  State<AnimatedSizeSample> createState() => _AnimatedSizeSampleState();
}

class _AnimatedSizeSampleState extends State<AnimatedSizeSample> {
  double _size = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _size += 100;
            });
          },
          onDoubleTap: () {
            setState(() {
              _size = 100;
            });
          },
          child: AnimatedSize(
            duration: const Duration(seconds: 1),
            child: Container(width: _size, height: _size, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
