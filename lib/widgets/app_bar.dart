import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'AppBar', type: AppBarSample)
AppBarSample appBarSample(BuildContext context) {
  return const AppBarSample();
}

class AppBarSample extends StatelessWidget {
  const AppBarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Sample'),
        backgroundColor: Colors.red,
        centerTitle: true,
        leading: Text('leading'),
        actions: [Text('action1'), Text('action2')],
      ),
    );
  }
}
