import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Scaffold', type: ScaffoldSample)
ScaffoldSample scaffoldSample(BuildContext context) {
  return const ScaffoldSample();
}

class ScaffoldSample extends StatelessWidget {
  const ScaffoldSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: Text('Scaffold Sample')),
      body: Text('bodyです'),
      floatingActionButton: Text('FAB'),
      drawer: Drawer(),
      endDrawer: Drawer(),
    );
  }
}
