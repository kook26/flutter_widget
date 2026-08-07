import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'PageView', type: PageViewSample)
PageViewSample pageViewSample(BuildContext context) {
  return const PageViewSample();
}

class PageViewSample extends StatelessWidget {
  const PageViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 1);

    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        onPageChanged: (index) {
          print('Page changed to $index');
        },
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.red,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
