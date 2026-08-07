import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'ScrollBar', type: ScrollBarSample)
ScrollBarSample scrollBarSample(BuildContext context) {
  return const ScrollBarSample();
}

class ScrollBarSample extends StatelessWidget {
  const ScrollBarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RawScrollbar(
        thumbColor: Colors.grey,
        thickness: 10, // スクロールバーの大きさ
        thumbVisibility: true, // 常時スクロールバー表示
        radius: Radius.circular(24),
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
        ),
      ),
    );
  }
}
