import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Slider', type: SliderSample)
SliderSample sliderSample(BuildContext context) {
  return const SliderSample();
}

class SliderSample extends StatefulWidget {
  const SliderSample({super.key});

  @override
  State<SliderSample> createState() => _SliderSampleState();
}

class _SliderSampleState extends State<SliderSample> {
  double selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Slider(
              value: selectedValue,
              min: 0,
              max: 100,
              divisions: 5, // スライダーの分割メモリ
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
            Text('Selected Value: $selectedValue'),
          ],
        ),
      ),
    );
  }
}
