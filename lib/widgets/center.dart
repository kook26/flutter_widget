import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Center', type: CenterSample)
CenterSample centerSample(BuildContext context) {
  return const CenterSample();
}

class CenterSample extends StatelessWidget {
  const CenterSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Hello, Center!')));
  }
}
