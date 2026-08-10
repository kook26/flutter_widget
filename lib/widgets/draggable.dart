import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Draggable', type: DraggableSample)
DraggableSample draggableSample(BuildContext context) {
  return const DraggableSample();
}

class DraggableSample extends StatefulWidget {
  const DraggableSample({super.key});

  @override
  State<DraggableSample> createState() => _DraggableSampleState();
}

class _DraggableSampleState extends State<DraggableSample> {
  int _droppedData = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 30,
          mainAxisSize: MainAxisSize.min,
          children: [
            Draggable<int>(
              data: 1,
              // ドラッグ中に持っている表示
              feedback: Container(
                width: 150,
                height: 150,
                color: Colors.redAccent.withValues(alpha: 0.5),
              ),
              // ドラッグ中表示(ドラッグする前に表示されていた場所)
              childWhenDragging: Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: Text('DropTargetに持っていってください。'),
              ),
              // ドラッグ前表示
              child: Container(
                width: 150,
                height: 150,
                color: Colors.redAccent,
                child: Text('ドラッグ可能です。'),
              ),
            ),

            // ドラッグする場所
            DragTarget<int>(
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.blueAccent,
                  child: Text('ここにドロップしてください'),
                );
              },
              onAcceptWithDetails: (details) {
                setState(() {
                  _droppedData += details.data;
                });
              },
            ),
            Text('ドロップされたデータ: $_droppedData'),
          ],
        ),
      ),
    );
  }
}
