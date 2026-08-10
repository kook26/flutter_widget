import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'FloatingActionButton',
  type: FloatingActionButtonSample,
)
FloatingActionButtonSample floatingActionButtonSample(BuildContext context) {
  return const FloatingActionButtonSample();
}

class FloatingActionButtonSample extends StatelessWidget {
  const FloatingActionButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton Pressed');
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          shape: CircleBorder(),
          // elevation: 10,
        ),
      ),
    );
  }
}
