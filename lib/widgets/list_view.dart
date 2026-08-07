import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'ListView', type: ListViewSample)
ListViewSample listViewSample(BuildContext context) {
  return const ListViewSample();
}

class ListViewSample extends StatelessWidget {
  const ListViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 8),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            child: Text(
              'Item $index',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            width: 100,
            height: 300,
            color: Colors.red,
            margin: EdgeInsets.symmetric(vertical: 10),
          );
        },
      ),
    );
  }
}
