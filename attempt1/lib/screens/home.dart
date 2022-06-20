import 'package:attempt1/screens/designed/circularborder.dart';
import 'package:attempt1/screens/designed/circularbox.dart';
import 'package:attempt1/screens/designed/containertransform.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  //overiding only related ana variabbles
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my first app'),
      ),
      body: ListView(children: const [
        MyCircularborderBox(
          boxcolor: Colors.redAccent,
          boxmessage: 'hello i am box 1',
        ),
        MyCircularborderBox(
          boxcolor: Colors.green,
          boxmessage: 'box2',
        ),
        Mycirbox(
            boxcolor: Colors.greenAccent,
            boxmessage: 'hello i m next box shape circle'),
        Myconttrans(
          boxcolor: Colors.red,
          boxmessage: 'transforming ',
        )
      ]),
    );
  }
}
