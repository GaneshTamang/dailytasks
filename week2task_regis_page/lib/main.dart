import 'package:flutter/material.dart';
import 'package:uinumber/home.dart/country_regpage/frontpage.dart';

void main() {
  runApp(const PhoneVerificationApp());
}

class PhoneVerificationApp extends StatelessWidget {
  const PhoneVerificationApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ui For drowpdown country',
      home: FrontRegPage(),
    );
  }
}
