import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Icon', type: IconSample)
IconSample iconSample(BuildContext context) {
  return const IconSample();
}

class IconSample extends StatelessWidget {
  const IconSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Icon(Icons.add_alert, color: Colors.red, size: 100));
  }
}
