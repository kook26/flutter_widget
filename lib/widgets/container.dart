import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Container', type: ContainerSample)
ContainerSample containerSample(BuildContext context) {
  return const ContainerSample();
}

class ContainerSample extends StatelessWidget {
  const ContainerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 320,
        height: 200,
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(top: 24),
        margin: EdgeInsets.all(24),
        constraints: BoxConstraints(minWidth: 300),
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.black, width: 10),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(10),
          ),
          gradient: LinearGradient(
            colors: [Colors.red, Colors.yellow],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text('childです'),
      ),
    );
  }
}
