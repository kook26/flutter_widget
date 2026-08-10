import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Checkbox', type: CheckboxSample)
CheckboxSample checkboxSample(BuildContext context) {
  return const CheckboxSample();
}

class CheckboxSample extends StatefulWidget {
  const CheckboxSample({super.key});

  @override
  State<CheckboxSample> createState() => _CheckboxSampleState();
}

class _CheckboxSampleState extends State<CheckboxSample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Checkbox(
          value: isChecked,
          shape: CircleBorder(),
          activeColor: Colors.red,
          onChanged: (value) {
            setState(() {
              isChecked = value ?? false;
            });
          },
        ),
      ),
    );
  }
}
