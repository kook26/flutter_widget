import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'TableBarView', type: TableBarViewSample)
TableBarViewSample tableBarViewSample(BuildContext context) {
  return const TableBarViewSample();
}

class TableBarViewSample extends StatelessWidget {
  const TableBarViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: '検索'),
                Tab(text: 'ホーム'),
                Tab(text: 'アカウント'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('検索タブの内容')),
                  Center(child: Text('ホームタブの内容')),
                  Center(child: Text('アカウントタブの内容')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
