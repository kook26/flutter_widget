import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Hero', type: HeroSample)
HeroSample heroSample(BuildContext context) {
  return const HeroSample();
}

class HeroSample extends StatelessWidget {
  const HeroSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NextPage()),
            );
          },
          child: Hero(
            tag: 'tag',
            transitionOnUserGestures: true,
            child: Container(width: 50, height: 50, color: Colors.red),
          ),
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
      appBar: AppBar(),
      body: Hero(
        tag: 'tag',
        transitionOnUserGestures: true,
        child: Container(
          width: double.infinity,
          height: 200,
          color: Colors.red,
        ),
      ),
    );
  }
}
