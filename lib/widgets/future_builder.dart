import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'FutureBuilder', type: FutureBuilderSample)
FutureBuilderSample futureBuilderSample(BuildContext context) {
  return const FutureBuilderSample();
}

class FutureBuilderSample extends StatelessWidget {
  const FutureBuilderSample({super.key});

  @override
  Widget build(BuildContext context) {
    Future<String?> fetchData() async {
      await Future.delayed(const Duration(seconds: 2));
      // return 'Data loaded';
      throw Exception('Failed to load data');
      // return null;
    }

    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            // 通信中表示
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            // エラー時
            if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            final data = snapshot.data;
            if (data != null) {
              return Text(data);
            }
            return const Text('No data found');
          },
        ),
      ),
    );
  }
}
