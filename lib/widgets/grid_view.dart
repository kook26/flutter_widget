import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'GridView', type: GridViewSample)
GridViewSample gridViewSample(BuildContext context) {
  return const GridViewSample();
}

class GridViewSample extends StatelessWidget {
  const GridViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GridView.count(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 12,
      //   mainAxisSpacing: 12,
      //   children: [
      //     Container(width: 50, height: 50, color: Colors.red),
      //     Container(width: 50, height: 50, color: Colors.blue),
      //     Container(width: 50, height: 50, color: Colors.green),
      //     Container(width: 50, height: 50, color: Colors.red),
      //     Container(width: 50, height: 50, color: Colors.blue),
      //     Container(width: 50, height: 50, color: Colors.green),
      //     Container(width: 50, height: 50, color: Colors.red),
      //     Container(width: 50, height: 50, color: Colors.blue),
      //     Container(width: 50, height: 50, color: Colors.green),
      //   ],
      // ),
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) {
          return Container(width: 50, height: 50, color: Colors.red);
        },
      ),
    );
  }
}
