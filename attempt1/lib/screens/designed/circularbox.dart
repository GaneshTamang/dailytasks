import 'package:flutter/material.dart';

class Mycirbox extends StatelessWidget {
  final String boxmessage;
  //color can be passed as variable type
  final Color boxcolor;
  const Mycirbox({Key? key, required this.boxcolor, required this.boxmessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: boxcolor,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black)),
        child: Center(
          child: Text(
            boxmessage,
            style: const TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
