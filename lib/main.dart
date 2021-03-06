import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:youdemy/pages/home/home_page.dart';

void main() {
  runApp(DevicePreview(builder: (_) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curso de Flutter',
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: HomePage(),
    );
  }
}
