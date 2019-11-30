import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';

Future main() async {
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new HomePage(),
    );
  }
}