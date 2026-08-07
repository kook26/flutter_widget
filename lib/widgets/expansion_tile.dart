import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'ExpansionTile', type: ExpansionTileSample)
ExpansionTileSample expansionTileSample(BuildContext context) {
  return const ExpansionTileSample();
}

class ExpansionTileSample extends StatelessWidget {
  const ExpansionTileSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(
            title: const Text('Tap to expand'),
            children: [
              ListTile(title: const Text('Item 1')),
              ListTile(title: const Text('Item 2')),
              ListTile(title: const Text('Item 3')),
            ],
          ),
          ExpansionTile(
            title: const Text('Tap to expand'),
            initiallyExpanded: true,
            backgroundColor: Colors.red,
            trailing: Icon(Icons.dangerous_outlined),
            onExpansionChanged: (isExpanded) {
              print('Expansion changed: $isExpanded');
            },
            children: [ListTile(title: const Text('Item 1'))],
          ),
        ],
      ),
    );
  }
}
