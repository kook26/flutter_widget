import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'SingleChildScrollViewSample',
  type: SingleChildScrollViewSample,
)
SingleChildScrollViewSample singleChildScrollViewSample(BuildContext context) {
  return const SingleChildScrollViewSample();
}

class SingleChildScrollViewSample extends StatelessWidget {
  const SingleChildScrollViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(width: 200, height: 300, color: Colors.red),
            Container(width: 200, height: 300, color: Colors.blue),
            Container(width: 200, height: 300, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
