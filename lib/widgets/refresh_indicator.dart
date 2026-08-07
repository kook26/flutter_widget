import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'RefreshIndicator', type: RefreshIndicatorSample)
RefreshIndicatorSample refreshIndicatorSample(BuildContext context) {
  return const RefreshIndicatorSample();
}

class RefreshIndicatorSample extends StatelessWidget {
  const RefreshIndicatorSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        backgroundColor: Colors.green,
        color: Colors.brown,
        strokeWidth: 5,
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 5));
        },
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ListTile(title: Text('Item $index'));
          },
        ),
      ),
    );
  }
}
