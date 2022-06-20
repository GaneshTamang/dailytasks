import 'package:attempt1/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const UiApp());
}

class UiApp extends StatelessWidget {
  //this constructor are for
  const UiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'first ui app',
      home: HomePage(),
    );
  }
}
