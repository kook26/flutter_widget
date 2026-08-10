import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'DropdownButton', type: DropdownButtonSample)
DropdownButtonSample dropdownButtonSample(BuildContext context) {
  return const DropdownButtonSample();
}

class DropdownButtonSample extends StatefulWidget {
  const DropdownButtonSample({super.key});

  @override
  State<DropdownButtonSample> createState() => _DropdownButtonSampleState();
}

class _DropdownButtonSampleState extends State<DropdownButtonSample> {
  int? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<int>(
          value: selectedValue,
          items: [
            DropdownMenuItem(child: Text('Option 1'), value: 1),
            DropdownMenuItem(child: Text('Option 2'), value: 2),
            DropdownMenuItem(child: Text('Option 3'), value: 3),
          ],
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        ),
      ),
    );
  }
}
