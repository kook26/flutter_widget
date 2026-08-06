import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Drawer', type: DrawerSample)
DrawerSample drawerSample(BuildContext context) {
  return const DrawerSample();
}

class DrawerSample extends StatelessWidget {
  const DrawerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer Sample')),
      drawer: Drawer(child: Text('This is a drawer')),
    );
  }
}
