import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'PopupMenuButton', type: PopupMenuButtonSample)
PopupMenuButtonSample popupMenuButtonSample(BuildContext context) {
  return const PopupMenuButtonSample();
}

class PopupMenuButtonSample extends StatefulWidget {
  const PopupMenuButtonSample({super.key});

  @override
  State<PopupMenuButtonSample> createState() => _PopupMenuButtonSampleState();
}

class _PopupMenuButtonSampleState extends State<PopupMenuButtonSample> {
  int? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PopupMenuButton<int>(
              icon: Icon(Icons.abc),
              tooltip: '選択してください！', // カーソルを合わせた時に表示される文字
              initialValue: _selectedValue,
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('Item 1'), value: 1),
                  PopupMenuItem(child: Text('Item 2'), value: 2),
                  PopupMenuItem(child: Text('Item 3'), value: 3),
                ];
              },
              onSelected: (value) {
                setState(() {
                  _selectedValue = value;
                });
              },
            ),
            Text('Selected Value: $_selectedValue'),
          ],
        ),
      ),
    );
  }
}
