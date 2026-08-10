import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'AnimatedOpacitySample', type: AnimatedOpacitySample)
AnimatedOpacitySample animatedOpacitySample(BuildContext context) {
  return const AnimatedOpacitySample();
}

class AnimatedOpacitySample extends StatefulWidget {
  const AnimatedOpacitySample({super.key});

  @override
  State<AnimatedOpacitySample> createState() => _AnimatedOpacitySampleState();
}

class _AnimatedOpacitySampleState extends State<AnimatedOpacitySample> {
  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 20,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 1),
              child: Text('Tap the to change its opacity'),
            ),
            ElevatedButton(
              onPressed: () {
                if (_opacity == 1) {
                  _opacity = 0;
                } else {
                  _opacity = 1;
                }
                setState(() {});
              },
              child: Text('Change Opacity'),
            ),
          ],
        ),
      ),
    );
  }
}
