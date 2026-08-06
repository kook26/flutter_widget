import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() {
  runApp(const WidgetBookApp());
}

@widgetbook.App()
class WidgetBookApp extends StatelessWidget {
  const WidgetBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: [
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(name: 'Light', data: ThemeData.light()),
            WidgetbookTheme(name: 'Dark', data: ThemeData.dark()),
          ],
        ),
        ViewportAddon([
          ViewportData(
            name: 'iPhone 15/16',
            width: 393,
            height: 852,
            pixelRatio: 3.0,
            platform: TargetPlatform.iOS,
          ),
          ViewportData(
            name: 'iPhone SE',
            width: 375,
            height: 667,
            pixelRatio: 2.0,
            platform: TargetPlatform.iOS,
          ),
        ]),
      ],
    );
  }
}
