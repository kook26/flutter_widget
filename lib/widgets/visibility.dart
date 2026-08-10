import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Visibility', type: VisibilitySample)
VisibilitySample visibilitySample(BuildContext context) {
  return const VisibilitySample();
}

class VisibilitySample extends StatelessWidget {
  const VisibilitySample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(visible: true, child: Text('Visible Text')),
            Visibility(visible: false, child: Text('Not Visible Text')),
            Visibility(visible: true, child: Text('Visible Text')),
          ],
        ),
      ),
    );
  }
}
