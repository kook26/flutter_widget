import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'image', type: ImageSample)
ImageSample imageSample(BuildContext context) {
  return const ImageSample();
}

class ImageSample extends StatelessWidget {
  const ImageSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/naruto.png', fit: BoxFit.contain),
    );
  }
}
