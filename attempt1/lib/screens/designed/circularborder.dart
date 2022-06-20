import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCircularborderBox extends StatelessWidget {
  final String boxmessage;
  final Color boxcolor;
  const MyCircularborderBox(
      {Key? key, required this.boxcolor, required this.boxmessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        //here alignmens the child with in the container
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: boxcolor,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: const Color.fromARGB(255, 7, 94, 255))),
        child: Text(
          boxmessage,
          style: const TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
