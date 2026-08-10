import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'AnimatedSwitcher', type: AnimatedSwitcherSample)
AnimatedSwitcherSample animatedSwitcherSample(BuildContext context) {
  return const AnimatedSwitcherSample();
}

class AnimatedSwitcherSample extends StatefulWidget {
  const AnimatedSwitcherSample({super.key});

  @override
  State<AnimatedSwitcherSample> createState() => _AnimatedSwitcherSampleState();
}

class _AnimatedSwitcherSampleState extends State<AnimatedSwitcherSample> {
  int counter = 0;

  // カウンターメソッド
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          // transitionBuilder: (child, animation) {
          //   return ScaleTransition(scale: animation, child: child);
          // },
          child: Text(
            '$counter',
            key: ValueKey<int>(counter),
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
