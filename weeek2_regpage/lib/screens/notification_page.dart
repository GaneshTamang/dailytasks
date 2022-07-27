import 'package:flutter/material.dart';

class NotiPage extends StatelessWidget {
  final String price;
  final String acNo;
  const NotiPage({Key? key, required this.price, required this.acNo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            'Your Amount Send Successfully to \n AC NO: $acNo \n price send :MYR $price'),
      ),
    );
  }
}
