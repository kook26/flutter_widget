import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'BackButton', type: BackButtonSample)
BackButtonSample backButtonSample(BuildContext context) {
  return const BackButtonSample();
}

class BackButtonSample extends StatelessWidget {
  const BackButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => const NextPage()));
          },
          child: Text('画面遷移'),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        leading: BackButton(
          onPressed: () {
            print('Back button pressed');
            Navigator.of(context).pop();
          },
        ),
        title: Text('Next Page'),
      ),
    );
  }
}
