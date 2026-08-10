import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'StreamBuilder', type: StreamBuilderSample)
StreamBuilderSample streamBuilderSample(BuildContext context) {
  return const StreamBuilderSample();
}

class StreamBuilderSample extends StatelessWidget {
  const StreamBuilderSample({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = StreamController<int>();
    int counter = 0;

    void increment() {
      counter++;
      controller.sink.add(counter);
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 20,
          children: [
            StreamBuilder(
              stream: controller.stream,
              builder: (context, snapshot) {
                final value = snapshot.data ?? 0;
                // カウンター
                return Text(
                  'Counter: $value',
                  style: const TextStyle(fontSize: 24),
                );
              },
            ),
            // カウントボタン
            ElevatedButton(
              onPressed: increment,
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
