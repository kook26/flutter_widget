import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'IconButton', type: IconButtonSample)
IconButtonSample iconButtonSample(BuildContext context) {
  return const IconButtonSample();
}

class IconButtonSample extends StatelessWidget {
  const IconButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IconButton(
        color: Colors.red,
        iconSize: 50,
        onPressed: () {
          print('タップされました');
        },
        icon: Icon(Icons.add),
      ),
    );
  }
}
